// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Miel",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Miel",
            targets: ["Miel"]),
    ],
    targets: [
        .target(
            name: "Miel")
    ]
)
