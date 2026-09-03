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
            url: "https://adhere-prod.s3.us-west-2.amazonaws.com/sdk-releases/ios/1.0.4/SmartComplySDK.xcframework.zip",
            checksum: "fc614c4083ec652b6ac64deaf7b9b7f7bdf134ca0e62c39fd151370609a46c22"
        )
    ]
)
