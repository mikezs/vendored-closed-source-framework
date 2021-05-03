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
    dependencies: [
        .package(
            name: "Alamofire",
            url: "https://github.com/Alamofire/Alamofire.git",
            .upToNextMajor(from: "5.4.3")
        )
    ],
    targets: [
        .binaryTarget(
            name: "ClosedSourceFramework",
            url: "https://github.com/gersonnoboa/vendored-closed-source-framework/releases/download/1.0.0/ClosedSourceFramework.xcframework.zip",
            checksum: "c4579ca971b734b607ac92b2130ac51a744cf7e39be61c94d67252050019b377"
        ),
        .target(
            name: "VendoredClosedSourceFramework",
            dependencies: [
                "ClosedSourceFramework",
                "Alamofire"
            ]
        )
    ]
)
