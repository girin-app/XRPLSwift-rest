//
//  UtilsHttp_Tests.swift
//  XRPLSwift-rest
//
//  Created by Bryan on 12/4/24.
//

import Testing
import Foundation
import AnyCodable
@testable import XRPLSwift_rest

struct HttpTests {
    @Test func testHttp_success() async throws {
        let param = ["method": "ping"]
        let result: Dictionary<String, String>? = try await http.request(httpMethod: http.HttpMethod.post, url: URL.init(string: "https://xrplcluster.com/")!, params: param)
        
        #expect(result!["status"] == "success")
    }
    
    @Test func testHttp_4xxFail() async throws {
        let param = ["method": "blahblah"]

        await #expect(throws: http.APIError.ErrorResponse(code: 32, msg: "Unknown method.")) {
            let _: Dictionary<String, String>? = try await http.request(httpMethod: http.HttpMethod.post, url: URL.init(string: "https://xrplcluster.com/")!, params: param)
        }
    }
}
