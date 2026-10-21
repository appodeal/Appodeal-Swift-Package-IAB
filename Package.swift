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
            url: "https://appodeal-ios.s3.us-west-1.amazonaws.com/Appodeal/SPM/AppodealIABAdapter/4.4.1.1/47fe967a416f/AppodealIABAdapter.xcframework.zip",
            checksum: "47fe967a416f7cc9d6525d05edbaca04b416bad4ad9028bb902bd28737a6d670"
        ),

    ]
)
