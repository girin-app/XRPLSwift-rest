//
//  Ping.swift
//
//
//  Created by Denis Angell on 7/30/22.
//

// https://github.com/XRPLF/xrpl.js/blob/main/packages/xrpl/src/models/methods/ping.ts

import Foundation

/**
 The ping command returns an acknowledgement, so that clients can test the
 connection status and latency. Expects a response in the form of a {@link
 PingResponse}.
 */
public class PingRequest: Request {
    static public func getMethod() -> String {
        return "ping"
    }
}

/**
 Response expected from a {@link PingRequest}.
 */
public class PingResponse: Codable {
    public var status: String

    enum CodingKeys: String, CodingKey {
        case status = "status"
    }

    public required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        status = try values.decode(String.self, forKey: .status)
    }

    func toJson() throws -> [String: AnyObject] {
        let data = try JSONEncoder().encode(self)
        let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
        return jsonResult as? [String: AnyObject] ?? [:]
    }
}
