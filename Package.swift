// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ClosedSourceFramework",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ClosedSourceFramework",
            targets: ["VendoredClosedSourceFramework"])
    ],
    targets: [
        .binaryTarget(
            name: "ClosedSourceFramework",
            url: "https://github.com/mikezs/vendored-closed-source-framework/releases/download/1.0.2/ClosedSourceFramework.xcframework.zip",
            checksum: "b5c23a07cc9b2c4dcc306581ef63eb94fb52e1b032634bdbe00fdea46117d18f"
        ),
        .target(
            name: "VendoredClosedSourceFramework",
            dependencies: [
                "ClosedSourceFramework"
            ]
        )
    ]
)
