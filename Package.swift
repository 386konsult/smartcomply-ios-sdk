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
            url: "https://adhere-prod.s3.us-west-2.amazonaws.com/sdk-releases/ios/1.6.1/SmartComplySDK.xcframework.zip",
            checksum: "cd1f823a10ff4fa9c293903cbcfd035f4b488881e094b32e5407f62c09f2bcfd"
        )
    ]
)
