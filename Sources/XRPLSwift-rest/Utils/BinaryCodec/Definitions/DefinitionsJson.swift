//
//  DefinitionsJson.swift
//  XRPLSwift
//
//  Created by Mitch Lang on 5/11/19.
//

// swiftlint:disable file_length

import Foundation

let serializerDefinitions = """
{
  "TYPES": {
    "Validation": 10003,
    "Done": -1,
    "Hash128": 4,
    "Blob": 7,
    "AccountID": 8,
    "Amount": 6,
    "Hash256": 5,
    "UInt8": 16,
    "Vector256": 19,
    "STObject": 14,
    "Unknown": -2,
    "Transaction": 10001,
    "Hash160": 17,
    "PathSet": 18,
    "LedgerEntry": 10002,
    "UInt16": 1,
    "NotPresent": 0,
    "UInt64": 3,
    "UInt32": 2,
    "STArray": 15
  },
  "LEDGER_ENTRY_TYPES": {
    "Any": -3,
    "Child": -2,
    "Invalid": -1,
    "AccountRoot": 97,
    "DirectoryNode": 100,
    "RippleState": 114,
    "Ticket": 84,
    "SignerList": 83,
    "Offer": 111,
    "LedgerHashes": 104,
    "Amendments": 102,
    "FeeSettings": 115,
    "Escrow": 117,
    "PayChannel": 120,
    "DepositPreauth": 112,
    "Check": 67,
    "Nickname": 110,
    "Contract": 99,
    "NFTokenPage": 80,
    "NFTokenOffer": 55,
    "NegativeUNL": 78
  },
  "FIELDS": [
    [
      "LedgerEntry",
      {
        "nth": 1,
        "isVLEncoded": false,
        "isSerialized": false,
        "isSigningField": false,
        "type": "LedgerEntry"
      }
    ],
    [
      "Transaction",
      {
        "nth": 1,
        "isVLEncoded": false,
        "isSerialized": false,
        "isSigningField": false,
        "type": "Transaction"
      }
    ],
    [
      "Validation",
      {
        "nth": 1,
        "isVLEncoded": false,
        "isSerialized": false,
        "isSigningField": false,
        "type": "Validation"
      }
    ],
    [
      "Metadata",
      {
        "nth": 1,
        "isVLEncoded": false,
        "isSerialized": false,
        "isSigningField": false,
        "type": "Validation"
      }
    ],
    [
      "CloseResolution",
      {
        "nth": 1,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt8"
      }
    ],
    [
      "Method",
      {
        "nth": 2,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt8"
      }
    ],
    [
      "TransactionResult",
      {
        "nth": 3,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt8"
      }
    ],
    [
      "TickSize",
      {
        "nth": 16,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt8"
      }
    ],
    [
      "UNLModifyDisabling",
      {
        "nth": 17,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt8"
      }
    ],
    [
      "HookResult",
      {
        "nth": 18,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt8"
      }
    ],
    [
      "LedgerEntryType",
      {
        "nth": 1,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt16"
      }
    ],
    [
      "TransactionType",
      {
        "nth": 2,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt16"
      }
    ],
    [
      "SignerWeight",
      {
        "nth": 3,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt16"
      }
    ],
    [
      "TransferFee",
      {
        "nth": 4,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt16"
      }
    ],
    [
      "Version",
      {
        "nth": 16,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt16"
      }
    ],
    [
      "HookStateChangeCount",
      {
        "nth": 17,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt16"
      }
    ],
    [
      "HookEmitCount",
      {
        "nth": 18,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt16"
      }
    ],
    [
      "HookExecutionIndex",
      {
        "nth": 19,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt16"
      }
    ],
    [
      "HookApiVersion",
      {
        "nth": 20,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt16"
      }
    ],
    [
      "Flags",
      {
        "nth": 2,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "SourceTag",
      {
        "nth": 3,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "Sequence",
      {
        "nth": 4,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "PreviousTxnLgrSeq",
      {
        "nth": 5,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "LedgerSequence",
      {
        "nth": 6,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "CloseTime",
      {
        "nth": 7,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "ParentCloseTime",
      {
        "nth": 8,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "SigningTime",
      {
        "nth": 9,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "Expiration",
      {
        "nth": 10,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "TransferRate",
      {
        "nth": 11,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "WalletSize",
      {
        "nth": 12,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "OwnerCount",
      {
        "nth": 13,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "DestinationTag",
      {
        "nth": 14,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "HighQualityIn",
      {
        "nth": 16,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "HighQualityOut",
      {
        "nth": 17,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "LowQualityIn",
      {
        "nth": 18,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "LowQualityOut",
      {
        "nth": 19,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "QualityIn",
      {
        "nth": 20,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "QualityOut",
      {
        "nth": 21,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "StampEscrow",
      {
        "nth": 22,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "BondAmount",
      {
        "nth": 23,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "LoadFee",
      {
        "nth": 24,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "OfferSequence",
      {
        "nth": 25,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "FirstLedgerSequence",
      {
        "nth": 26,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "LastLedgerSequence",
      {
        "nth": 27,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "TransactionIndex",
      {
        "nth": 28,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "OperationLimit",
      {
        "nth": 29,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "ReferenceFeeUnits",
      {
        "nth": 30,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "ReserveBase",
      {
        "nth": 31,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "ReserveIncrement",
      {
        "nth": 32,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "SetFlag",
      {
        "nth": 33,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "ClearFlag",
      {
        "nth": 34,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "SignerQuorum",
      {
        "nth": 35,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "CancelAfter",
      {
        "nth": 36,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "FinishAfter",
      {
        "nth": 37,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "SignerListID",
      {
        "nth": 38,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "SettleDelay",
      {
        "nth": 39,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "TicketCount",
      {
        "nth": 40,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "TicketSequence",
      {
        "nth": 41,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "NFTokenTaxon",
      {
        "nth": 42,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "MintedNFTokens",
      {
        "nth": 43,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "BurnedNFTokens",
      {
        "nth": 44,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "HookStateCount",
      {
        "nth": 45,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "EmitGeneration",
      {
        "nth": 46,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt32"
      }
    ],
    [
      "IndexNext",
      {
        "nth": 1,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "IndexPrevious",
      {
        "nth": 2,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "BookNode",
      {
        "nth": 3,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "OwnerNode",
      {
        "nth": 4,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "BaseFee",
      {
        "nth": 5,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "ExchangeRate",
      {
        "nth": 6,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "LowNode",
      {
        "nth": 7,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "HighNode",
      {
        "nth": 8,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "DestinationNode",
      {
        "nth": 9,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "Cookie",
      {
        "nth": 10,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "ServerVersion",
      {
        "nth": 11,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "NFTokenOfferNode",
      {
        "nth": 12,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "EmitBurden",
      {
        "nth": 13,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "HookOn",
      {
        "nth": 16,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "HookInstructionCount",
      {
        "nth": 17,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "HookReturnCode",
      {
        "nth": 18,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "ReferenceCount",
      {
        "nth": 19,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "UInt64"
      }
    ],
    [
      "EmailHash",
      {
        "nth": 1,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash128"
      }
    ],
    [
      "TakerPaysCurrency",
      {
        "nth": 1,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash160"
      }
    ],
    [
      "TakerPaysIssuer",
      {
        "nth": 2,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash160"
      }
    ],
    [
      "TakerGetsCurrency",
      {
        "nth": 3,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash160"
      }
    ],
    [
      "TakerGetsIssuer",
      {
        "nth": 4,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash160"
      }
    ],
    [
      "LedgerHash",
      {
        "nth": 1,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "ParentHash",
      {
        "nth": 2,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "TransactionHash",
      {
        "nth": 3,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "AccountHash",
      {
        "nth": 4,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "PreviousTxnID",
      {
        "nth": 5,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "LedgerIndex",
      {
        "nth": 6,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "WalletLocator",
      {
        "nth": 7,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "RootIndex",
      {
        "nth": 8,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "AccountTxnID",
      {
        "nth": 9,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "NFTokenID",
      {
        "nth": 10,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "EmitParentTxnID",
      {
        "nth": 11,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "EmitNonce",
      {
        "nth": 12,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "EmitHookHash",
      {
        "nth": 13,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "BookDirectory",
      {
        "nth": 16,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "InvoiceID",
      {
        "nth": 17,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "Nickname",
      {
        "nth": 18,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "Amendment",
      {
        "nth": 19,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "Digest",
      {
        "nth": 21,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "Channel",
      {
        "nth": 22,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "ConsensusHash",
      {
        "nth": 23,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "CheckID",
      {
        "nth": 24,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "ValidatedHash",
      {
        "nth": 25,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "PreviousPageMin",
      {
        "nth": 26,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "NextPageMin",
      {
        "nth": 27,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "NFTokenBuyOffer",
      {
        "nth": 28,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "NFTokenSellOffer",
      {
        "nth": 29,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "HookStateKey",
      {
        "nth": 30,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "HookHash",
      {
        "nth": 31,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "HookNamespace",
      {
        "nth": 32,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "HookSetTxnID",
      {
        "nth": 33,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "Amount",
      {
        "nth": 1,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Amount"
      }
    ],
    [
      "Balance",
      {
        "nth": 2,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Amount"
      }
    ],
    [
      "LimitAmount",
      {
        "nth": 3,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Amount"
      }
    ],
    [
      "TakerPays",
      {
        "nth": 4,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Amount"
      }
    ],
    [
      "TakerGets",
      {
        "nth": 5,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Amount"
      }
    ],
    [
      "LowLimit",
      {
        "nth": 6,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Amount"
      }
    ],
    [
      "HighLimit",
      {
        "nth": 7,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Amount"
      }
    ],
    [
      "Fee",
      {
        "nth": 8,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Amount"
      }
    ],
    [
      "SendMax",
      {
        "nth": 9,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Amount"
      }
    ],
    [
      "DeliverMin",
      {
        "nth": 10,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Amount"
      }
    ],
    [
      "MinimumOffer",
      {
        "nth": 16,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Amount"
      }
    ],
    [
      "RippleEscrow",
      {
        "nth": 17,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Amount"
      }
    ],
    [
      "DeliveredAmount",
      {
        "nth": 18,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Amount"
      }
    ],
    [
      "NFTokenBrokerFee",
      {
        "nth": 19,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Amount"
      }
    ],
    [
      "HookCallbackFee",
      {
        "nth": 20,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Amount"
      }
    ],
    [
      "PublicKey",
      {
        "nth": 1,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "MessageKey",
      {
        "nth": 2,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "SigningPubKey",
      {
        "nth": 3,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "TxnSignature",
      {
        "nth": 4,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": false,
        "type": "Blob"
      }
    ],
    [
      "URI",
      {
        "nth": 5,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "Signature",
      {
        "nth": 6,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": false,
        "type": "Blob"
      }
    ],
    [
      "Domain",
      {
        "nth": 7,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "FundCode",
      {
        "nth": 8,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "RemoveCode",
      {
        "nth": 9,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "ExpireCode",
      {
        "nth": 10,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "CreateCode",
      {
        "nth": 11,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "MemoType",
      {
        "nth": 12,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "MemoData",
      {
        "nth": 13,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "MemoFormat",
      {
        "nth": 14,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "Fulfillment",
      {
        "nth": 16,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "Condition",
      {
        "nth": 17,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "MasterSignature",
      {
        "nth": 18,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": false,
        "type": "Blob"
      }
    ],
    [
      "UNLModifyValidator",
      {
        "nth": 19,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "ValidatorToDisable",
      {
        "nth": 20,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "ValidatorToReEnable",
      {
        "nth": 21,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "HookStateData",
      {
        "nth": 22,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "HookReturnString",
      {
        "nth": 23,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "HookParameterName",
      {
        "nth": 24,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "HookParameterValue",
      {
        "nth": 25,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Blob"
      }
    ],
    [
      "Account",
      {
        "nth": 1,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "AccountID"
      }
    ],
    [
      "Owner",
      {
        "nth": 2,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "AccountID"
      }
    ],
    [
      "Destination",
      {
        "nth": 3,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "AccountID"
      }
    ],
    [
      "Issuer",
      {
        "nth": 4,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "AccountID"
      }
    ],
    [
      "Authorize",
      {
        "nth": 5,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "AccountID"
      }
    ],
    [
      "Unauthorize",
      {
        "nth": 6,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "AccountID"
      }
    ],
    [
      "RegularKey",
      {
        "nth": 8,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "AccountID"
      }
    ],
    [
      "NFTokenMinter",
      {
        "nth": 9,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "AccountID"
      }
    ],
    [
      "EmitCallback",
      {
        "nth": 10,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "AccountID"
      }
    ],
    [
      "HookAccount",
      {
        "nth": 16,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "AccountID"
      }
    ],
    [
      "Indexes",
      {
        "nth": 1,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Vector256"
      }
    ],
    [
      "Hashes",
      {
        "nth": 2,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Vector256"
      }
    ],
    [
      "Amendments",
      {
        "nth": 3,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Vector256"
      }
    ],
    [
      "NFTokenOffers",
      {
        "nth": 4,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Vector256"
      }
    ],
    [
      "HookNamespaces",
      {
        "nth": 5,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Vector256"
      }
    ],
    [
      "Paths",
      {
        "nth": 1,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "PathSet"
      }
    ],
    [
      "TransactionMetaData",
      {
        "nth": 2,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "CreatedNode",
      {
        "nth": 3,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "DeletedNode",
      {
        "nth": 4,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "ModifiedNode",
      {
        "nth": 5,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "PreviousFields",
      {
        "nth": 6,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "FinalFields",
      {
        "nth": 7,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "NewFields",
      {
        "nth": 8,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "TemplateEntry",
      {
        "nth": 9,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "Memo",
      {
        "nth": 10,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "SignerEntry",
      {
        "nth": 11,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "NFToken",
      {
        "nth": 12,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "EmitDetails",
      {
        "nth": 13,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "Hook",
      {
        "nth": 14,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "Signer",
      {
        "nth": 16,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "Majority",
      {
        "nth": 18,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "DisabledValidator",
      {
        "nth": 19,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "EmittedTxn",
      {
        "nth": 20,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "HookExecution",
      {
        "nth": 21,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "HookDefinition",
      {
        "nth": 22,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "HookParameter",
      {
        "nth": 23,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "HookGrant",
      {
        "nth": 24,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "Signers",
      {
        "nth": 3,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": false,
        "type": "STArray"
      }
    ],
    [
      "SignerEntries",
      {
        "nth": 4,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STArray"
      }
    ],
    [
      "Template",
      {
        "nth": 5,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STArray"
      }
    ],
    [
      "Necessary",
      {
        "nth": 6,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STArray"
      }
    ],
    [
      "Sufficient",
      {
        "nth": 7,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STArray"
      }
    ],
    [
      "AffectedNodes",
      {
        "nth": 8,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STArray"
      }
    ],
    [
      "Memos",
      {
        "nth": 9,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STArray"
      }
    ],
    [
      "NFTokens",
      {
        "nth": 10,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STArray"
      }
    ],
    [
      "Hooks",
      {
        "nth": 11,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STArray"
      }
    ],
    [
      "Majorities",
      {
        "nth": 16,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STArray"
      }
    ],
    [
      "DisabledValidators",
      {
        "nth": 17,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STArray"
      }
    ],
    [
      "HookExecutions",
      {
        "nth": 18,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STArray"
      }
    ],
    [
      "HookParameters",
      {
        "nth": 19,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STArray"
      }
    ],
    [
      "HookGrants",
      {
        "nth": 20,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STArray"
      }
    ],
    [
      "Generic",
      {
        "nth": 0,
        "isVLEncoded": false,
        "isSerialized": false,
        "isSigningField": false,
        "type": "Unknown"
      }
    ],
    [
      "Invalid",
      {
        "nth": -1,
        "isVLEncoded": false,
        "isSerialized": false,
        "isSigningField": false,
        "type": "Unknown"
      }
    ],
    [
      "TicketID",
      {
        "nth": 20,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "Hash256"
      }
    ],
    [
      "hash",
      {
        "nth": 257,
        "isVLEncoded": false,
        "isSerialized": false,
        "isSigningField": false,
        "type": "Hash256"
      }
    ],
    [
      "index",
      {
        "nth": 258,
        "isVLEncoded": false,
        "isSerialized": false,
        "isSigningField": false,
        "type": "Hash256"
      }
    ],
    [
      "taker_gets_funded",
      {
        "nth": 258,
        "isVLEncoded": false,
        "isSerialized": false,
        "isSigningField": false,
        "type": "Amount"
      }
    ],
    [
      "taker_pays_funded",
      {
        "nth": 259,
        "isVLEncoded": false,
        "isSerialized": false,
        "isSigningField": false,
        "type": "Amount"
      }
    ],
    [
      "Target",
      {
        "nth": 7,
        "isVLEncoded": true,
        "isSerialized": true,
        "isSigningField": true,
        "type": "AccountID"
      }
    ],
    [
      "ObjectEndMarker",
      {
        "nth": 1,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STObject"
      }
    ],
    [
      "ArrayEndMarker",
      {
        "nth": 1,
        "isVLEncoded": false,
        "isSerialized": true,
        "isSigningField": true,
        "type": "STArray"
      }
    ]
  ],
  "TRANSACTION_RESULTS": {
    "telLOCAL_ERROR": -399,
    "telBAD_DOMAIN": -398,
    "telBAD_PATH_COUNT": -397,
    "telBAD_PUBLIC_KEY": -396,
    "telFAILED_PROCESSING": -395,
    "telINSUF_FEE_P": -394,
    "telNO_DST_PARTIAL": -393,
    "telCAN_NOT_QUEUE": -392,
    "telCAN_NOT_QUEUE_BALANCE": -391,
    "telCAN_NOT_QUEUE_BLOCKS": -390,
    "telCAN_NOT_QUEUE_BLOCKED": -389,
    "telCAN_NOT_QUEUE_FEE": -388,
    "telCAN_NOT_QUEUE_FULL": -387,

    "temMALFORMED": -299,
    "temBAD_AMOUNT": -298,
    "temBAD_CURRENCY": -297,
    "temBAD_EXPIRATION": -296,
    "temBAD_FEE": -295,
    "temBAD_ISSUER": -294,
    "temBAD_LIMIT": -293,
    "temBAD_OFFER": -292,
    "temBAD_PATH": -291,
    "temBAD_PATH_LOOP": -290,
    "temBAD_REGKEY": -289,
    "temBAD_SEND_XRP_LIMIT": -288,
    "temBAD_SEND_XRP_MAX": -287,
    "temBAD_SEND_XRP_NO_DIRECT": -286,
    "temBAD_SEND_XRP_PARTIAL": -285,
    "temBAD_SEND_XRP_PATHS": -284,
    "temBAD_SEQUENCE": -283,
    "temBAD_SIGNATURE": -282,
    "temBAD_SRC_ACCOUNT": -281,
    "temBAD_TRANSFER_RATE": -280,
    "temDST_IS_SRC": -279,
    "temDST_NEEDED": -278,
    "temINVALID": -277,
    "temINVALID_FLAG": -276,
    "temREDUNDANT": -275,
    "temRIPPLE_EMPTY": -274,
    "temDISABLED": -273,
    "temBAD_SIGNER": -272,
    "temBAD_QUORUM": -271,
    "temBAD_WEIGHT": -270,
    "temBAD_TICK_SIZE": -269,
    "temINVALID_ACCOUNT_ID": -268,
    "temCANNOT_PREAUTH_SELF": -267,
    "temUNCERTAIN": -266,
    "temUNKNOWN": -265,
    "temSEQ_AND_TICKET": -264,
    "temBAD_NFTOKEN_TRANSFER_FEE": -263,

    "tefFAILURE": -199,
    "tefALREADY": -198,
    "tefBAD_ADD_AUTH": -197,
    "tefBAD_AUTH": -196,
    "tefBAD_LEDGER": -195,
    "tefCREATED": -194,
    "tefEXCEPTION": -193,
    "tefINTERNAL": -192,
    "tefNO_AUTH_REQUIRED": -191,
    "tefPAST_SEQ": -190,
    "tefWRONG_PRIOR": -189,
    "tefMASTER_DISABLED": -188,
    "tefMAX_LEDGER": -187,
    "tefBAD_SIGNATURE": -186,
    "tefBAD_QUORUM": -185,
    "tefNOT_MULTI_SIGNING": -184,
    "tefBAD_AUTH_MASTER": -183,
    "tefINVARIANT_FAILED": -182,
    "tefTOO_BIG": -181,
    "tefNO_TICKET": -180,
    "tefNFTOKEN_IS_NOT_TRANSFERABLE": -179,

    "terRETRY": -99,
    "terFUNDS_SPENT": -98,
    "terINSUF_FEE_B": -97,
    "terNO_ACCOUNT": -96,
    "terNO_AUTH": -95,
    "terNO_LINE": -94,
    "terOWNERS": -93,
    "terPRE_SEQ": -92,
    "terLAST": -91,
    "terNO_RIPPLE": -90,
    "terQUEUED": -89,
    "terPRE_TICKET": -88,

    "tesSUCCESS": 0,

    "tecCLAIM": 100,
    "tecPATH_PARTIAL": 101,
    "tecUNFUNDED_ADD": 102,
    "tecUNFUNDED_OFFER": 103,
    "tecUNFUNDED_PAYMENT": 104,
    "tecFAILED_PROCESSING": 105,
    "tecDIR_FULL": 121,
    "tecINSUF_RESERVE_LINE": 122,
    "tecINSUF_RESERVE_OFFER": 123,
    "tecNO_DST": 124,
    "tecNO_DST_INSUF_XRP": 125,
    "tecNO_LINE_INSUF_RESERVE": 126,
    "tecNO_LINE_REDUNDANT": 127,
    "tecPATH_DRY": 128,
    "tecUNFUNDED": 129,
    "tecNO_ALTERNATIVE_KEY": 130,
    "tecNO_REGULAR_KEY": 131,
    "tecOWNERS": 132,
    "tecNO_ISSUER": 133,
    "tecNO_AUTH": 134,
    "tecNO_LINE": 135,
    "tecINSUFF_FEE": 136,
    "tecFROZEN": 137,
    "tecNO_TARGET": 138,
    "tecNO_PERMISSION": 139,
    "tecNO_ENTRY": 140,
    "tecINSUFFICIENT_RESERVE": 141,
    "tecNEED_MASTER_KEY": 142,
    "tecDST_TAG_NEEDED": 143,
    "tecINTERNAL": 144,
    "tecOVERSIZE": 145,
    "tecCRYPTOCONDITION_ERROR": 146,
    "tecINVARIANT_FAILED": 147,
    "tecEXPIRED": 148,
    "tecDUPLICATE": 149,
    "tecKILLED": 150,
    "tecHAS_OBLIGATIONS": 151,
    "tecTOO_SOON": 152,

    "tecMAX_SEQUENCE_REACHED": 154,
    "tecNO_SUITABLE_NFTOKEN_PAGE": 155,
    "tecNFTOKEN_BUY_SELL_MISMATCH": 156,
    "tecNFTOKEN_OFFER_TYPE_MISMATCH": 157,
    "tecCANT_ACCEPT_OWN_NFTOKEN_OFFER": 158,
    "tecINSUFFICIENT_FUNDS": 159,
    "tecOBJECT_NOT_FOUND": 160,
    "tecINSUFFICIENT_PAYMENT": 161,
    "tecINCORRECT_ASSET": 162,
    "tecTOO_MANY": 163
  },
  "TRANSACTION_TYPES": {
    "Invalid": -1,
    "Payment": 0,
    "EscrowCreate": 1,
    "EscrowFinish": 2,
    "AccountSet": 3,
    "EscrowCancel": 4,
    "SetRegularKey": 5,
    "NickNameSet": 6,
    "OfferCreate": 7,
    "OfferCancel": 8,
    "Contract": 9,
    "TicketCreate": 10,
    "TicketCancel": 11,
    "SignerListSet": 12,
    "PaymentChannelCreate": 13,
    "PaymentChannelFund": 14,
    "PaymentChannelClaim": 15,
    "CheckCreate": 16,
    "CheckCash": 17,
    "CheckCancel": 18,
    "DepositPreauth": 19,
    "TrustSet": 20,
    "AccountDelete": 21,
    "SetHook": 22,
    "NFTokenMint": 25,
    "NFTokenBurn": 26,
    "NFTokenCreateOffer": 27,
    "NFTokenCancelOffer": 28,
    "NFTokenAcceptOffer": 29,
    "EnableAmendment": 100,
    "SetFee": 101,
    "UNLModify": 102
  }
}
"""
