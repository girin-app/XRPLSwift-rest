// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XRPLSwift-rest",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v5)
    ],
    products: [
        .library(
            name: "XRPLSwift-rest",
            targets: ["XRPLSwift-rest"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Flight-School/AnyCodable.git", .upToNextMajor(from: "0.6.7")),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMajor(from: "1.8.3")),
        .package(url: "https://github.com/attaswift/BigInt.git", .upToNextMajor(from: "5.5.1")),
        .package(url: "https://github.com/Boilertalk/secp256k1.swift.git", .upToNextMajor(from: "0.1.7")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "XRPLSwift-rest",
            dependencies: [
                .product(name: "secp256k1", package: "secp256k1.swift"),
                "AnyCodable",
                "CryptoSwift",
                "BigInt",
            ]
        ),
        .testTarget(
            name: "XRPLSwift-restTests",
            dependencies: ["XRPLSwift-rest"]
        ),
    ]
)
