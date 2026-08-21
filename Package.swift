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
            url: "https://adhere-prod.s3.us-west-2.amazonaws.com/sdk-releases/ios/1.0.1/SmartComplySDK.xcframework.zip",
            checksum: "a3b399d1a3bbe369f638fa6e7d1379b8baefe24a8df5bc0e3d6fe706a0bef040"
        )
    ]
)
