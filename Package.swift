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
            url: "https://adhere-prod.s3.us-west-2.amazonaws.com/sdk-releases/ios/1.7.1/SmartComplySDK.xcframework.zip",
            checksum: "30fce30205ca81701bc884171bb1684aee2098c81cef8181e36422c84c2edf2e"
        )
    ]
)
