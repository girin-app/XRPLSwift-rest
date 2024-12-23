//
//  File.swift
//
//
//  Created by Denis Angell on 7/30/22.
//

// https://github.com/XRPLF/xrpl.js/blob/main/packages/xrpl/src/models/methods/ledgerCurrent.ts

import Foundation

/**
 The ledger_current method returns the unique identifiers of the current
 in-progress ledger. Expects a response in the form of a {@link
 LedgerCurrentResponse}.
 *
 @example
 ```ts
 const ledgerCurrent: LedgerCurrentRequest = {
 "command": "ledger_current"
 }
 ```
 */
public class LedgerCurrentRequest: Request {
    static public func getMethod() -> String {
        return "ledger_current"
    }
}

/**
 Response expected from a {@link LedgerCurrentRequest}.
 */
public class LedgerCurrentResponse: Codable {
    public var ledgerCurrentIndex: Int

    enum CodingKeys: String, CodingKey {
        case ledgerCurrentIndex = "ledger_current_index"
    }

    public required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        ledgerCurrentIndex = try values.decode(Int.self, forKey: .ledgerCurrentIndex)
    }

    func toJson() throws -> [String: AnyObject] {
        let data = try JSONEncoder().encode(self)
        let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
        return jsonResult as? [String: AnyObject] ?? [:]
    }
}
