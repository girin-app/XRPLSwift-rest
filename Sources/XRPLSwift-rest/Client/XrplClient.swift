//
//  XrplClient.swift
//
//
//  Created by Denis Angell on 7/27/22.
//  Modified by Bryan Rhee on 12/09/24.
//

// https://github.com/XRPLF/xrpl.js/blob/main/packages/xrpl/src/client/index.ts

import AnyCodable
import Foundation

public class ClientOptions {
    public var feeCushion: Double?
    public var maxFeeXRP: String?

    init(
        feeCushion: Double? = nil,
        maxFeeXRP: String? = nil
    ) {
        self.feeCushion = feeCushion
        self.maxFeeXRP = maxFeeXRP
    }
}

/**
 * Get the response key / property name that contains the listed data for a
 * command. This varies from command to command, but we need to know it to
 * properly count across many requests.
 *
 * @param command - The rippled request command.
 * @returns The property key corresponding to the command.
 */
private func getCollectKeyFromCommand(command: String) -> String? {
    switch command {
    case "account_channels":
        return "channels"
    case "account_lines":
        return "lines"
    case "account_objects":
        return "account_objects"
    case "account_tx":
        return "transactions"
    case "account_offers":
        return "offers"
    case "book_offers":
        return "offers"
    case "ledger_data":
        return "state"
    default:
        return nil
    }
}

//class MarkerRequest: BaseRequest {
//    var limit: Int?
//    var marker: String?
//}

// TODO: What is marker?
//class MarkerResponse: BaseResponse<Any> {}

// swiftlint:disable:next identifier_name
private let DEFAULT_FEE_CUSHION: Double = 1.2
// swiftlint:disable:next identifier_name
private let DEFAULT_MAX_FEE_XRP: String = "2"
// swiftlint:disable:next identifier_name
private let MIN_LIMIT: Int = 10
// swiftlint:disable:next identifier_name
private let MAX_LIMIT: Int = 400


/**
 * Client for interacting with rippled servers.
 *
 * @category Clients
 */
public class XrplClient {
    /*
     * Underlying connection to rippled.
     */
    public var host: String

    /**
     * Factor to multiply estimated fee by to provide a cushion in case the
     * required fee rises during submission of a transaction. Defaults to 1.2.
     *
     * @category Fee
     */
    public let feeCushion: Double

    /**
     * Maximum transaction cost to allow, in decimal XRP. Must be a string-encoded
     * number. Defaults to "2".
     *
     * @category Fee
     */
    public let maxFeeXRP: String

    /**
     * Creates a new Client with a websocket connection to a rippled server.
     *
     * @param server - URL of the server to connect to.
     * @param options - Options for client settings.
     * @category Constructor
     */
    // eslint-disable-next-line max-lines-per-function -- okay because we have to set up all the connection handlers
    public init(host: String, options: ClientOptions? = nil) throws {
        if !host.isValidHttp {
            throw ValidationError("server URI must start with `http://`, `https://`.")
        }
        self.host = host
        self.feeCushion = options?.feeCushion ?? Double(DEFAULT_FEE_CUSHION)
        self.maxFeeXRP = options?.maxFeeXRP ?? DEFAULT_MAX_FEE_XRP
    }

    /**
     * Get the url that the client is connected to.
     *
     * @returns The URL of the host this client is connected to.
     * @category Network
     */
    func url() -> String {
        return self.host
    }

    /**
     * @category Network
     */
    func request(_ r: AccountChannelsRequest) async throws -> AccountChannelsResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: AccountCurrenciesRequest) async throws -> AccountCurrenciesResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: AccountInfoRequest) async throws -> AccountInfoResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: AccountLinesRequest) async throws -> AccountLinesResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: AccountNFTsRequest) async throws -> AccountNFTsResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: AccountObjectsRequest) async throws -> AccountObjectsResponse {
        return try await request(rdict: r)
    }
    
    
    func request(_ r: AccountOffersRequest) async throws -> AccountOffersResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: AccountTxRequest) async throws -> AccountTxResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: BookOffersRequest) async throws -> BookOffersResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: ChannelVerifyRequest) async throws -> ChannelVerifyResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: DepositAuthorizedRequest) async throws -> DepositAuthorizedResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: FeeRequest) async throws -> FeeResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: GatewayBalancesRequest) async throws -> GatewayBalancesResponse {
        return try await request(rdict: r)
    }

    func request(_ r: LedgerRequest) async throws -> LedgerResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: LedgerClosedRequest) async throws -> LedgerClosedResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: LedgerCurrentRequest) async throws -> LedgerCurrentResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: LedgerDataRequest) async throws -> LedgerDataResponse {
        return try await request(rdict: r)
    }
    
    //    // swiftlint:disable:next identifier_name
    //    func request(_ r: LedgerEntryRequest) async -> EventLoopFuture<Any> {
    //        return await request(r: r)
    //    }
    
    func request(_ r: ManifestRequest) async throws  -> ManifestResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: NFTBuyOffersRequest) async throws -> NFTBuyOffersResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: NFTSellOffersRequest) async throws -> NFTSellOffersResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: NoRippleCheckRequest) async throws -> NoRippleCheckResponse {
        return try await request(rdict: r)
    }
    
    //    // swiftlint:disable:next identifier_name
    //    func request(_ r: PathFindRequest) async -> EventLoopFuture<Any> {
    //        return await request(r: r)
    //    }
    
    func request(_ r: PingRequest) async throws -> PingResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: RandomRequest) async throws -> RandomResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: RipplePathFindRequest) async throws -> RipplePathFindResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: ServerInfoRequest) async throws -> ServerInfoResponse {
        return try await request(rdict: r)
    }
    
    func request(_ r: ServerStateRequest) async throws -> ServerStateResponse {
        return try await request(rdict: r)
    }
    
//    // swiftlint:disable:next identifier_name
//    func request(_ r: SubmitRequest) async -> EventLoopFuture<Any> {
//        return await request(r: r)
//    }
//    // swiftlint:disable:next identifier_name
//    func request(_ r: SubmitMultisignedRequest) async -> EventLoopFuture<Any> {
//        return await request(r: r)
//    }
//    //    // swiftlint:disable:next identifier_name
//    //    func request(_ r: SubscribeRequest) async -> EventLoopFuture<Any> {
//    //        return await request(r: r)
//    //    }
//    //    // swiftlint:disable:next identifier_name
//    //    func request(_ r: UnsubscribeRequest) async -> EventLoopFuture<Any> {
//    //        return await request(r: r)
//    //    }
    
    func request(_ r: TransactionEntryRequest) async throws -> TransactionEntryResponse {
        return try await request(rdict: r)
    }
    
//    // swiftlint:disable:next identifier_name
//    func request(_ r: TxRequest) async -> EventLoopFuture<Any> {
//        return await request(r: r)
//    }
    // swiftlint:disable:next identifier_name

    public func request<T: Request, R: Codable>(rdict: T) async throws -> R {
        let req = BaseRequest<T>.init(method: T.getMethod(), params: [rdict])
        guard let data = try JSONSerialization.jsonObject(with: req.jsonData()) as? APIParams else {
            throw http.APIError.cannotParseRequest
        }
        
        return try await http.request(
            httpMethod: http.HttpMethod.post,
            url: URL.init(string: self.host)!,
            params: data
        )
    }

    /**
     * Makes a request to the client with the given command and
     * additional request body parameters.
     *
     * @param req - Request to send to the server.
     * @returns The response from the server.
     * @category Network
     */
    func ensureClassicAddress(_ account: String) -> String {
        return account
    }

//    public func autofill(transaction: Transaction, signersCount: Int? = 0) async throws -> EventLoopFuture<[String: AnyObject]> {
//        return try await AutoFillSugar().autofill(self, try transaction.toJson(), signersCount)
//    }
//
//    public func submit(transaction: Transaction, opts: SubmitOptions?) async throws -> EventLoopFuture<Any> {
//        return try await XRPLSwift.submit(
//            self,
//            transaction,
//            opts?.autofill,
//            opts?.failHard,
//            opts?.wallet
//        )
//    }
//
//    public func submit(transaction: String, opts: SubmitOptions?) async throws -> EventLoopFuture<Any> {
//        return try await XRPLSwift.submit(
//            self,
//            transaction,
//            opts?.autofill,
//            opts?.failHard,
//            opts?.wallet
//        )
//    }
//    //    /**
//    //     * @category Core
//    //     */
//    //    public submitAndWait = submitAndWait
//    //
//    public func getXrpBalance(address: String) async throws -> String {
//        return try await XRPLSwift.getXrpBalance(self, address)
//    }
//    //    /**
//    //     * @category Abstraction
//    //     */
//    //    public getBalances = getBalances
//    //
//    //    /**
//    //     * @category Abstraction
//    //     */
//    //    public getOrderbook = getOrderbook
//    public func getLedgerIndex() async throws -> Int {
//        return try await XRPLSwift.getLedgerIndex(self)
//    }
//    //    public fundWallet = fundWallet
}

extension String {
    var isValidHttp: Bool {
        return range(of: #"^(https?):\/\/[^\s/$.?#].[^\s]*$"#, options: .regularExpression) != nil
    }
}

