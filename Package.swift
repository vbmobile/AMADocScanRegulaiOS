// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "AMADocScanRegulaiOS",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "AMADocScanRegulaiOS",
            targets: ["AMADocScanRegulaiOSWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/vbmobile/AMADocModeliOS", .upToNextMinor(from: "1.0.0")),
        .package(url: "https://github.com/regulaforensics/DocumentReader-Swift-Package", from: "8.3.0"),
        .package(url: "https://github.com/regulaforensics/DocumentReaderMRZRFID-Swift-Package", from: "8.3.0"),
    ],
    targets: [
        .binaryTarget(
            name: "AMADocScanRegulaiOS",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMADocScanRegulaiOS/AMADocScanRegulaiOS-1.0.0.zip",
            checksum: "f58a0d4f4744bdce8f256ecf770562e005db8604287f5d1d4fbf8afebab201d9"
        ),
        .target(
            name: "AMADocScanRegulaiOSWrapper",
            dependencies: [
                .target(name: "AMADocScanRegulaiOS"),
                .product(name: "AMADocModeliOS", package: "AMADocModeliOS"),
                .product(name: "DocumentReader", package: "DocumentReader-Swift-Package"),
                .product(name: "MRZRFID", package: "DocumentReaderMRZRFID-Swift-Package"),
            ],
            path: "Sources",
            sources: ["AMADocScanRegulaiOS.swift"]
        )
    ]
)
