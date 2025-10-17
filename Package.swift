// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "safe_passwordiosLib",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "safe_passwordiosLib",
            targets: ["safe_passwordiosLib"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "safe_passwordiOSLibBinary",
            path: "Sources/safe_passwordiosLib/safe_password.xcframework"
        ),
        .target(
            name: "safe_passwordiosLib",
            dependencies: ["safe_passwordiOSLibBinary"],
            path: "Sources/safe_passwordiosLib",
            sources: ["safe_passwordiosLib.swift"],
            publicHeadersPath: "include"
        ),
        .testTarget(
            name: "safe_passwordiosLibTests",
            dependencies: ["safe_passwordiosLib"]
        ),
    ]
)
