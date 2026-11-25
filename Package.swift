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
            url: "https://adhere-prod.s3.us-west-2.amazonaws.com/sdk-releases/ios/1.7.0/SmartComplySDK.xcframework.zip",
            checksum: "dcba06719abb412692a3ab69ff7d5c75889df6a3f2b0c96a8d62651f138b8ebd"
        )
    ]
)
