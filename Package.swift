// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NumStyleKit",
    platforms: [
        .iOS(.v15),
        .macOS(.v13),
        .watchOS(.v8),
        .tvOS(.v15)
    ],
    products: [
        .library(
            name: "NumStyleKit",
            targets: ["NumStyleKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "NumStyleKit",
            dependencies: []),
    ]
)
