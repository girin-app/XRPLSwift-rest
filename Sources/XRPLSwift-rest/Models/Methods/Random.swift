//
//  Random.swift
//
//
//  Created by Denis Angell on 7/30/22.
//

// https://github.com/XRPLF/xrpl.js/blob/main/packages/xrpl/src/models/methods/random.ts

import Foundation

/**
 The random command provides a random number to be used as a source of
 entropy for random number generation by clients. Expects a response in the
 form of a {@link RandomResponse}.
 */
public class RandomRequest: Request {
    static public func getMethod() -> String {
        return "random"
    }
}

/**
 Response expected from a {@link RandomRequest}.
 */
public class RandomResponse: Codable {
    public var random: String
    public var status: String

    enum CodingKeys: String, CodingKey {
        case random = "random"
        case status = "status"
    }

    public required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        random = try values.decode(String.self, forKey: .random)
        status = try values.decode(String.self, forKey: .status)
    }

    func toJson() throws -> [String: AnyObject] {
        let data = try JSONEncoder().encode(self)
        let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
        return jsonResult as? [String: AnyObject] ?? [:]
    }
}
