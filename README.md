# AMADocScanRegulaiOS

Document scanning SDK with [Regula DocumentReader](https://regulaforensics.com/products/document-reader-sdk/) integration for iOS. Provides MRZ reading and RFID chip access via Regula's document processing engine.

## Requirements

- iOS 15.0+
- Swift 6.2+

## Dependencies

| Package | Version |
|---------|---------|
| [AMADocModeliOS](https://github.com/vbmobile/AMADocModeliOS) | See `Package.swift` |
| [DocumentReader](https://github.com/regulaforensics/DocumentReader-Swift-Package) | See `Package.swift` |
| [DocumentReaderMRZRFID](https://github.com/regulaforensics/DocumentReaderMRZRFID-Swift-Package) | See `Package.swift` |

## Installation

### Swift Package Manager

#### Xcode

1. Go to **File > Add Package Dependencies**
2. Enter the repository URL:
   ```
   https://github.com/vbmobile/AMADocScanRegulaiOS
   ```
3. Select the desired version

#### Package.swift

Add the dependency to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/vbmobile/AMADocScanRegulaiOS")
]
```

Then add `AMADocScanRegulaiOS` to your target's dependencies:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "AMADocScanRegulaiOS", package: "AMADocScanRegulaiOS")
    ]
)
```

> **Note:** Transitive dependencies (`AMADocModeliOS`, Regula packages) are resolved automatically by SPM.

## License

See [LICENSE.md](LICENSE.md) for details. Copyright Vision-Box S.A.
