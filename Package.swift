// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "BoredSDK",
    products: [
        .library(
            name: "BoredSDK",
            targets: ["BoredSDK"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "BoredSDK"),
        .testTarget(name: "BoredSDKTests", dependencies: ["BoredSDK"]),
    ]
)
