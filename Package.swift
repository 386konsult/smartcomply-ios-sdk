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
            url: "https://adhere-prod.s3.us-west-2.amazonaws.com/sdk-releases/ios/1.6.0/SmartComplySDK.xcframework.zip",
            checksum: "41094503f58c2f39c94d8dd0fb07b252432d2ef48de5ace3170105b83a90f5a1"
        )
    ]
)
