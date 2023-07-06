// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommonLogging",
    platforms:  [.iOS(.v14)],
    products: [
        .library(
            name: "CommonLogging",
            targets: ["CommonLogging"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CommonLogging",
            dependencies: []),
        .testTarget(
            name: "CommonLoggingTests",
            dependencies: ["CommonLogging"]),
    ]
)
