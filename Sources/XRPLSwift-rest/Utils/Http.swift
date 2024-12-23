//
//  http.swift
//
//
//  Created by Bryan on 7/12/24.
//

import Foundation
import AnyCodable

typealias APIParams = [String: Any?]

let TimeoutInterval = TimeInterval(3)

open class BaseResponse<T: Codable>: Codable {
    public var result: T
    
    private enum CodingKeys: String, CodingKey {
        case result = "result"
    }
}

open class ErrorResponse: Codable {
    public var status: String = "error"
    public var error: String
    public var errorCode: Int?
    public var errorMessage: String?
    public var request: AnyCodable?

    private enum CodingKeys: String, CodingKey {
        case status = "status"
        case error = "error"
        case errorCode = "error_code"
        case errorMessage = "error_message"
        case request = "request"
    }
}

class http {
    enum APIError : Error, Equatable {
        case invalidURL
        case noData
        case httpResponseIsNil
        case ErrorResponse(code: Int?, msg: String?)
        case unknownError
    }

    enum HttpMethod: String {
        case put = "PUT"
        case post = "POST"
        case get = "GET"
        case delete = "DELETE"
    }

    static func request<T: Codable>(httpMethod : HttpMethod, url: URL, params: APIParams? = nil) async throws -> T {
        let components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        
        guard let finalURL = components?.url else {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: finalURL)
        request.httpMethod = httpMethod.rawValue
        request.timeoutInterval = TimeoutInterval
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        if let params = params, ![.get, .delete].contains(httpMethod) {
            do {
                request.httpBody = try JSONSerialization.data(withJSONObject: params)
            } catch {
                print("Error creating JSON data: \(error)")
            }
        }
        
        let urlsession = URLSession.shared
        let (data, urlResponse) = try await urlsession.data(for: request)
        guard let httpResponse = urlResponse as? HTTPURLResponse else {
            throw APIError.httpResponseIsNil
        }
        
        if httpResponse.statusCode == 200 {
            do {
                return try JSONDecoder().decode(BaseResponse<T>.self, from: data).result
            } catch let error {
                if let errResponse = try? JSONDecoder().decode(BaseResponse<ErrorResponse>.self, from: data) {
                    let errDetail = errResponse.result
                    throw APIError.ErrorResponse(
                        code: errDetail.errorCode,
                        msg: errDetail.errorMessage
                    )
                }
                
                print(error)
                throw error
            }
        } else {
            throw APIError.ErrorResponse(
                code: httpResponse.statusCode,
                msg: String(decoding: data, as: UTF8.self)
            )
        }
    }
}
