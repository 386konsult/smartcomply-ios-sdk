// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SmartComplySDK",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "SmartComplySDK", targets: ["SmartComplySDK"])
    ],
    targets: [
        .binaryTarget(
            name: "SmartComplySDK",
            url: "https://adhere-prod.s3.us-west-2.amazonaws.com/sdk-releases/ios/1.2.0/SmartComplySDK.xcframework.zip",
            checksum: "264981e1357b949c6aa5b5019b1589f113f8ccb2f70197c972c84114d26c8a99"
        )
    ]
)
