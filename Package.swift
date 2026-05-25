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
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMADocScanRegulaiOS/AMADocScanRegulaiOS-2.0.0.zip",
            checksum: "bfda8cbba39f140f326ce1e5b219f9e172e37da6d640d9498bd745dcf539b944"
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
