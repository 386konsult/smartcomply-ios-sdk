# SmartComply iOS SDK

Native Swift identity verification SDK for iOS — KYC document capture, ARKit liveness
detection and identity checks.

> **This repository contains the Swift Package manifest only.** The SDK ships as a
> precompiled XCFramework; the manifest points at the released binary. Source is not
> distributed here.

## Requirements

- iOS 16.0 or later
- iPhone X or later — liveness requires the TrueDepth camera
- Xcode 15+ / Swift 5.9+

## Installation

### Xcode

**File → Add Package Dependencies…**, enter:

```
https://github.com/386konsult/smartcomply-ios-sdk
```

Choose **Up to Next Major Version** and add the `SmartComplySDK` library to your target.

### Package.swift

```swift
dependencies: [
    .package(url: "https://github.com/386konsult/smartcomply-ios-sdk", from: "1.0.1")
],
targets: [
    .target(
        name: "YourApp",
        dependencies: [
            .product(name: "SmartComplySDK", package: "smartcomply-ios-sdk")
        ]
    )
]
```

## Required Info.plist keys

```xml
<key>NSCameraUsageDescription</key>
<string>Required for identity verification</string>
```

## Getting credentials

You need two values from the Adhere dashboard:

| Value | Where |
| --- | --- |
| `apiKey` | **Settings → APIs → Generate Key**. Shown once. |
| `clientId` | **Settings → Integrations → SDK Setup** — the **Config ID** column. |

> `clientId` is issued by the server when you create an SDK configuration. Do not
> generate one yourself.

## Usage

```swift
import SwiftUI
import SmartComplySDK

let sdk = SmartComply(config: SDKConfig(
    apiKey: "YOUR_API_KEY",
    clientId: "YOUR_CONFIG_ID",
    environment: .production
))

struct ContentView: View {
    @State private var showVerification = false

    var body: some View {
        Button("Verify identity") { showVerification = true }
            .sheet(isPresented: $showVerification) {
                SmartComplyFlowView(sdk: sdk) { result in
                    print("Entry:", result.entryId, "Status:", result.status)
                    showVerification = false
                }
            }
    }
}
```

`result.status` is the submission status, not the final verdict — verification completes
asynchronously. Use your configured webhook for the authoritative outcome.

## Support

support@smartcomply.com

## License

Copyright © SmartComply. All rights reserved.
