//
//  XrplClient_Tests.swift
//  XRPLSwift-rest
//
//  Created by Bryan on 12/11/24.
//

import Testing
@testable import XRPLSwift_rest

@Test func xrplClient_AccountCurrenciesRequest() async throws {
    let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
    let param = AccountCurrenciesRequest(account: "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ", ledgerIndex: LedgerIndex.string("validated"))
    
    let response: AccountCurrenciesResponse = try await client.request(rdict: param)
    
    #expect(response.ledgerHash != nil)
    #expect(response.ledgerIndex != nil && response.ledgerIndex > 0)
}
