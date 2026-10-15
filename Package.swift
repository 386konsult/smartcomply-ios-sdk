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
            url: "https://adhere-prod.s3.us-west-2.amazonaws.com/sdk-releases/ios/1.5.0/SmartComplySDK.xcframework.zip",
            checksum: "1823f2341a322112594195aa755e6d4ee0e25afb50e9fc6275484df9e497b163"
        )
    ]
)
