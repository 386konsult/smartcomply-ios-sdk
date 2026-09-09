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
            url: "https://adhere-prod.s3.us-west-2.amazonaws.com/sdk-releases/ios/1.1.0/SmartComplySDK.xcframework.zip",
            checksum: "7100e0297c71319eabafab0aaa77f581163396b56a99fcc96ff2a4aedac262dd"
        )
    ]
)
