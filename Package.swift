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
            url: "https://adhere-prod.s3.us-west-2.amazonaws.com/sdk-releases/ios/1.0.2/SmartComplySDK.xcframework.zip",
            checksum: "83a09d4bfc38cbb0212a889033216afb755227e99c9423cb6f7236834f4e7086"
        )
    ]
)
