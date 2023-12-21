// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DictionaryCoder",
    products: [
        .library(name: "DictionaryCoder", targets: ["DictionaryCoder"]),
    ],
    targets: [
        .target(name: "DictionaryCoder"),
        .testTarget(name: "DictionaryCoderTests", dependencies: ["DictionaryCoder"]),
    ]
)
