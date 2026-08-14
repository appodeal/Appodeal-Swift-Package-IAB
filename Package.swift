// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "AppodealIABAdapter",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "AppodealIABAdapter",
            targets: ["AppodealIABAdapterWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/appodeal/Appodeal-Swift-Package.git", .upToNextMajor(from: "4.0.0-alpha.1")),

    ],
    targets: [
        .target(
            name: "AppodealIABAdapterWrapper",
            dependencies: [
                .product(name: "AppodealSDK", package: "Appodeal-Swift-Package"),
                .target(name: "AppodealIABAdapter"),
            ],
            path: "Sources",
            sources: ["Exports.swift"]
        ),
        .binaryTarget(
            name: "AppodealIABAdapter",
            url: "https://appodeal-ios.s3.us-west-1.amazonaws.com/Appodeal/SPM/AppodealIABAdapter/3.5.2.0/AppodealIABAdapter.xcframework.zip",
            checksum: "d8db1dc3c713074ba6cff480f926af6f709758a2e4bac3f12e295bb3a1f6e339"
        ),

    ]
)
