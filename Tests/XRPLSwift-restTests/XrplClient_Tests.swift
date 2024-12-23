//
//  XrplClient_Tests.swift
//  XRPLSwift-rest
//
//  Created by Bryan on 12/11/24.
//

import Testing
@testable import XRPLSwift_rest

struct XrplClientTests {
    @Test func xrplClient_AccountChannelsRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = AccountChannelsRequest(account: "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ", ledgerIndex: LedgerIndex.string("validated"))
        
        let response: AccountChannelsResponse = try await client.request(rdict: param)
        
        #expect(response.ledgerHash != nil)
        #expect(response.ledgerIndex != nil && response.ledgerIndex > 0)
    }
    
    @Test func xrplClient_AccountCurrenciesRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = AccountCurrenciesRequest(account: "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ", ledgerIndex: LedgerIndex.string("validated"))
        
        let response: AccountCurrenciesResponse = try await client.request(rdict: param)
        
        #expect(response.ledgerHash != nil)
        #expect(response.ledgerIndex != nil && response.ledgerIndex > 0)
    }
    
    @Test func xrplClient_AccountLinesRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = AccountLinesRequest(account: "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ", ledgerIndex: LedgerIndex.string("validated"))
        
        let response: AccountLinesResponse = try await client.request(rdict: param)
        
        #expect(response.ledgerHash != nil)
        #expect(response.ledgerIndex != nil && response.account == "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ")
    }
    
    @Test func xrplClient_AccountInfosRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = AccountInfoRequest(account: "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ", ledgerIndex: LedgerIndex.string("validated"))
        
        let response: AccountInfoResponse = try await client.request(rdict: param)
        
        #expect(response.accountData.account == "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ")
    }
    
    @Test func xrplClient_AccountNFTsRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = AccountNFTsRequest(account: "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ")
        
        let response: AccountNFTsResponse = try await client.request(rdict: param)
        
        #expect(response.account == "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ")
    }
    
    @Test func xrplClient_AccountOffersRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = AccountOffersRequest(account: "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ")
        
        let response: AccountOffersResponse = try await client.request(rdict: param)
        
        #expect(response.account == "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ")
    }
    
    @Test func xrplClient_BookOffersRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = BookOffersRequest(
            takerGets: TakerAmount(currency: "XRP"),
            takerPays: TakerAmount(currency: "USD", issuer: "rhub8VRN55s94qWKDv6jmDy1pUykJzF3wq")
        )
        
        let response: BookOffersResponse = try await client.request(rdict: param)
        
        #expect(response.offers != nil)
    }
    
    @Test func xrplClient_ChannelVerifyRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = ChannelVerifyRequest(
            amount: "1000000",
            channelId: "5DB01B7FFED6B67E6B0414DED11E051D2EE2B7619CE0EAA6286D67A3A4D5BDB3",
            publicKey: "aB44YfzW24VDEJQ2UuLPV2PvqcPCSoLnL7y5M1EzhdW4LnK5xMS3",
            signature: "304402204EF0AFB78AC23ED1C472E74F4299C0C21F1B21D07EFC0A3838A420F76D783A400220154FB11B6F54320666E4C36CA7F686C16A3A0456800BBC43746F34AF50290064"
        )
        
        let response: ChannelVerifyResponse = try await client.request(rdict: param)
        
        #expect(response.signatureVerified == true)
    }
    
    @Test func xrplClient_DepositAuthorizedRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = DepositAuthorizedRequest(
            sourceAccount: "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ",
            destinationAccount: "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ"
        )
        
        let response: DepositAuthorizedResponse = try await client.request(rdict: param)
        
        #expect(response.depositAuthorized == true)
    }
    
    @Test func xrplClient_FeeRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = FeeRequest()
        
        let response: FeeResponse = try await client.request(rdict: param)
        
        #expect(response.drops != nil)
    }
    
    @Test func xrplClient_GatewayBalanceRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = GatewayBalancesRequest(account: "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ")
        
        let response: GatewayBalancesResponse = try await client.request(rdict: param)
        
        #expect(response.account == "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ")
    }
    
    @Test func xrplClient_LedgerRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = LedgerRequest(ledgerHash: "FF8A899071F6782D4F153B78DB959AA9C6611E7E83D5A3E903D510A1B35B1420")
        
        let response: ErrorResponse = try await client.request(rdict: param)
        
        #expect(response.errorMessage == "ledgerNotFound")
    }
    
    @Test func xrplClient_LedgerClosedRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = LedgerClosedRequest()
        
        let response: LedgerClosedResponse = try await client.request(rdict: param)
        
        #expect(response.ledgerHash.isEmpty == false)
    }
    
    @Test func xrplClient_LedgerCurrentRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = LedgerCurrentRequest()
        
        let response: LedgerCurrentResponse = try await client.request(rdict: param)
        
        #expect(response.ledgerCurrentIndex > 0)
    }
    
    @Test func xrplClient_LedgerDataRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = LedgerDataRequest(ledgerHash: "FF8A899071F6782D4F153B78DB959AA9C6611E7E83D5A3E903D510A1B35B1420")
        
        let response: ErrorResponse = try await client.request(rdict: param)
        
        #expect(response.errorMessage == "ledgerNotFound")
    }
    
    @Test func xrplClient_ManifestRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = ManifestRequest(publicKey: "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ")
        
        let response: ManifestResponse = try await client.request(rdict: param)
        
        #expect(response.requested == "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ")
    }
    
    @Test func xrplClient_NFTBuyOfferRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = NFTBuyOffersRequest(nftId: "FF8A899071F6782D4F153B78DB959AA9C6611E7E83D5A3E903D510A1B35B1420")
        
        let response: ErrorResponse = try await client.request(rdict: param)
        
        #expect(response.errorCode == 92)
    }
    
    @Test func xrplClient_NFTSellOfferRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = NFTSellOffersRequest(nftId: "FF8A899071F6782D4F153B78DB959AA9C6611E7E83D5A3E903D510A1B35B1420")
        
        let response: ErrorResponse = try await client.request(rdict: param)
        
        #expect(response.errorCode == 92)
    }
    
    @Test func xrplClient_NoRippleCheckRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = NoRippleCheckRequest(account: "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ", role: "user")
        
        let response: NoRippleCheckResponse = try await client.request(rdict: param)
        
        #expect(response.validated == false)
    }
    
    @Test func xrplClient_PingRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = PingRequest()
        
        let response: PingResponse = try await client.request(rdict: param)
        
        #expect(response.status == "success")
    }
    
    @Test func xrplClient_RandomRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = RandomRequest()
        
        let response: RandomResponse = try await client.request(rdict: param)
        
        #expect(response.status == "success")
    }
    
    @Test func xrplClient_RipplePathFindRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = RipplePathFindRequest(
            sourceAccount: "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ",
            destinationAccount: "rHkNNuXshwPCPZXGH2NUbEjwhKxnNVUcTQ",
            destinationAmount: Amount(value: "0.0001", issuer: "rvYAfWj5gh67oV6fW32ZzP3Aw4Eubs59B", currency: "USD")
        )
        
        let response: RipplePathFindResponse = try await client.request(rdict: param)
        
        #expect(response.status == "success")
    }
    
    @Test func xrplClient_ServerInfoRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = ServerInfoRequest()
        
        let response: ServerInfoResponse = try await client.request(rdict: param)
        
        #expect(response.info != nil)
    }
    
    @Test func xrplClient_ServerStateRequest() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = ServerStateRequest()
        
        let response: ServerStateResponse = try await client.request(rdict: param)
        
        #expect(response.status == "success")
    }
    
    // tested with a valid account
    //@Test func xrplClient_SubmitRequest() async throws {
    //    let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
    //    let wallet = Wallet.fromSeed("sEdV6bhEV489Abx3EamsUdk8chZA34i")
    //
    //    let paymentTx = Payment(amount: Amount.string("10"), destination: "r3UNMj8BuMmSmR5EYAseWq7RXcNCmzZTk2")
    //    let (hash, isQueued) = try await client.signAndSubmitTx(wallet, paymentTx, "10")
    //
    //    #expect(hash != nil)
    //}
    
    @Test func xrplClient_TransactionEntryResponse() async throws {
        let client = try XrplClient(host: "https://s.devnet.rippletest.net:51234/")
        let param = TransactionEntryRequest(txHash: "022FE6D18BFD92E6AC3260A051A2316F4EEAFCABD7315B6323DB273ACE3B8725", ledgerIndex: LedgerIndex.number(6591387))
        
        let response: TransactionEntryResponse = try await client.request(rdict: param)
        
        #expect(response.ledgerIndex > 0)
    }
}
