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
            url: "https://adhere-prod.s3.us-west-2.amazonaws.com/sdk-releases/ios/1.0.3/SmartComplySDK.xcframework.zip",
            checksum: "8233780a696a10a3cc2807196551a86977a8a627d1ce897001ad70a59d28f961"
        )
    ]
)
