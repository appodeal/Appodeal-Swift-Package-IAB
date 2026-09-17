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
            url: "https://appodeal-ios.s3.us-west-1.amazonaws.com/Appodeal/SPM/AppodealIABAdapter/4.4.0.0/c79af23f06fb/AppodealIABAdapter.xcframework.zip",
            checksum: "c79af23f06fb0f7058023f5aae65a918b5df57047367a785bde674162ea7660a"
        ),

    ]
)
