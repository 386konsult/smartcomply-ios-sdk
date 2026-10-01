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
            url: "https://adhere-prod.s3.us-west-2.amazonaws.com/sdk-releases/ios/1.3.0/SmartComplySDK.xcframework.zip",
            checksum: "b9a8aa352c1e1226bde14ba7aed0f3ddd8ac538a65911ebd3d148e1a6c89aa07"
        )
    ]
)
