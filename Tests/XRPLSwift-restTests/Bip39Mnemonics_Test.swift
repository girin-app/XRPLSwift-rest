//
//  Bip39Mnemonics_Test.swift
//  XRPLSwift-rest
//
//  Created by Bryan on 12/5/24.
//

import Testing
@testable import XRPLSwift_rest

struct Bip39Mnemonics {
    @Test func testCreate() throws {
        let mnemonics = try Bip39Mnemonic.create()
        #expect(mnemonics.split(separator: " ").count == 12)
    }
    
    @Test func testDeriveAccountFromMnemonics() async throws {
        let testMap: [String: String] = [
            "rwQi8mMJhXrWx22iZ1LVbqNy2QYA1wNHbD": "exact crawl parrot tobacco toy sugar laptop absurd cave ketchup coach civil",
            "r3UNMj8BuMmSmR5EYAseWq7RXcNCmzZTk2": "silent size afraid other lend vote lock popular venue bargain borrow unknown",
            "rwFNqweMG63HC7ZWUcuGtU4mD9AKaZqgoj": "disagree acquire output put helmet bright stairs imitate flee escape double act"
        ]
        
        for (expectedAddress, mnemonics) in testMap {
            let wallet = try! Wallet.fromMnemonics(
                mnemonics,
                MnemonicOptions(derivationPath: DerivationPath(), algorithm: .secp256k1)
            )
            #expect(wallet.classicAddress == expectedAddress)
        }
    }
    
    @Test func testDeriveAccountFromMnemonics_invalidMnemonics_shouldFail() async throws {
        // invalid mnemonics, civil -> ketchup
        let testMnemonics = "exact crawl parrot tobacco toy sugar laptop absurd cave ketchup coach ketchup"
        #expect(throws: XRPLSwift_rest.MnemonicsError.self) {
            try Wallet.fromMnemonics(
                testMnemonics,
                MnemonicOptions(derivationPath: DerivationPath(), algorithm: .secp256k1)
            )
        }
    }
    
    @Test func testDeriveAccountFromMnemonics_notInDictionary_shouldFail() async throws {
        // invalid mnemonics
        let testMnemonics = "aaa bbb ccc ddd eee fff ggg hhh iii jjj kkk lll"
        
        #expect(throws: XRPLSwift_rest.MnemonicsError.self) {
            try Wallet.fromMnemonics(
                testMnemonics,
                MnemonicOptions(derivationPath: DerivationPath(), algorithm: .secp256k1)
            )
        }
    }
    
    @Test func testDeriveAccountFromMnemonics_24words() async throws {
        let testMap: [String: String] = [
            "rqc8SrKoyxjZXfbcRgGfAa2aMSTdShqDw": "follow leaf middle inherit index boss unfair defense people brick wish switch push enhance volume then crowd fence canoe define disorder emerge gallery butter",
            "rpddaugHHt7H9KhGg9L9CJXfvZquiJ9N2F": "deny frog guide audit path dad busy collect pledge voice result announce mouse seat random visa garlic marriage steel thunder embrace foam palace shock",
            "rahZYQ6PZJQyBnWj6JrM77tkRiku8AhK2D": "shine olympic right differ swing milk pull morning traffic exotic runway cover siege swim olympic gentle coin enter mansion version winter upon siren milk"
        ]
        
        for (expectedAddress, mnemonics) in testMap {
            let wallet = try! Wallet.fromMnemonics(
                mnemonics,
                MnemonicOptions(derivationPath: DerivationPath(), algorithm: .secp256k1)
            )
            
            #expect(wallet.classicAddress == expectedAddress)
        }
    }
    
    @Test func testDeriveAccountFromMnemonics_24words_invalidMnemonics_shouldFail() async throws {
        let testMnemonics = "follow leaf middle inherit index boss unfair defense people brick wish switch push enhance volume then crowd fence canoe define disorder emerge gallery ketchup"
        
        #expect(throws: XRPLSwift_rest.MnemonicsError.self) {
            try Wallet.fromMnemonics(
                testMnemonics,
                MnemonicOptions(derivationPath: DerivationPath(), algorithm: .secp256k1)
            )
        }
    }
    
    @Test func testDeriveAccountFromMnemonics_24words_notInDictionary_shouldFail() async throws {
        let testMnemonics = "follow leaf middle inherit index boss unfair defense people brick wish switch push enhance volume then aaa fence canoe define disorder emerge gallery ketchup"
        
        #expect(throws: XRPLSwift_rest.MnemonicsError.self) {
            try Wallet.fromMnemonics(
                testMnemonics,
                MnemonicOptions(derivationPath: DerivationPath(), algorithm: .secp256k1)
            )
        }
    }
    
    @Test func testDeriveAccountFromSeed() async throws {
        let wallet = Wallet.fromSeed("sEdV6bhEV489Abx3EamsUdk8chZA34i")
        let expectedAddress = "rfhJPEXpWQ2M67iXqWNPh3AMMvVkpmtt4W"
        
        #expect(wallet.classicAddress == expectedAddress)
    }
    
    @Test func testSign() async throws {
        let wallet = Wallet.fromSeed("sEdV6bhEV489Abx3EamsUdk8chZA34i")
        let paymentTx = Payment(amount: Amount.string("10"), destination: "r3UNMj8BuMmSmR5EYAseWq7RXcNCmzZTk2")
        
        var unsignedTx = try paymentTx.toJson()
        _ = try! wallet.sign(unsignedTx)
    }
}
