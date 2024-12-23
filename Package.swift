// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XRPLSwift-rest",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "XRPLSwift-rest",
            targets: ["XRPLSwift-rest"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Flight-School/AnyCodable.git", .upToNextMajor(from: "0.6.7"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "XRPLSwift-rest",
            dependencies: [
                "AnyCodable"
            ]
        ),
        .testTarget(
            name: "XRPLSwift-restTests",
            dependencies: ["XRPLSwift-rest"]
        ),
    ]
)
