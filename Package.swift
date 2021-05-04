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
    dependencies:[ 
        .package(
            name: "Alamofire",
            url: "https://github.com/Alamofire/Alamofire.git",
            .upToNextMajor(from: "5.4.3")
        ),
        .package(
            name: "TwilioVoice",
            url: "https://github.com/gersonnoboa/twilio-voice-ios.git",
            .upToNextMajor(from: "1.0.0")
        ),
    ],
    targets: [
        .binaryTarget(
            name: "ClosedSourceFramework",
            url: "https://github.com/gersonnoboa/vendored-closed-source-framework/releases/download/1.0.1/ClosedSourceFramework.xcframework.zip",
            checksum: "b5c23a07cc9b2c4dcc306581ef63eb94fb52e1b032634bdbe00fdea46117d18f"
        ),
        .target(
            name: "VendoredClosedSourceFramework",
            dependencies: [
                "ClosedSourceFramework",
                "Alamofire",
                "TwilioVoice"
            ]
        )
    ]
)
