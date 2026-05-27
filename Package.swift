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
        .package(url: "https://github.com/vbmobile/AMADocModeliOS", .upToNextMinor(from: "2.0.0")),
        .package(url: "https://github.com/regulaforensics/DocumentReader-Swift-Package", from: "8.3.0"),
        .package(url: "https://github.com/regulaforensics/DocumentReaderMRZRFID-Swift-Package", from: "8.3.0"),
    ],
    targets: [
        .binaryTarget(
            name: "AMADocScanRegulaiOS",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMADocScanRegulaiOS/AMADocScanRegulaiOS-2.0.2.zip",
            checksum: "61f069898ffbffaf831a886bc2d103da012b38bc5ffb2335e5672df3d35e59cf"
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
