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
            url: "https://adhere-prod.s3.us-west-2.amazonaws.com/sdk-releases/ios/1.4.0/SmartComplySDK.xcframework.zip",
            checksum: "a44ea6e2d98060931861d656040610dd7b7bf69f6480f893497973b1e4969fd2"
        )
    ]
)
