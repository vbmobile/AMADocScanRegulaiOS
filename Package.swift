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
            targets: ["AMADocScanRegulaiOS"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/vbmobile/AMADocModeliOS", exact: "1.0.0-rc12"),
        .package(url: "https://github.com/regulaforensics/DocumentReader-Swift-Package", from: "8.3.0"),
        .package(url: "https://github.com/regulaforensics/DocumentReaderMRZRFID-Swift-Package", from: "8.3.0"),
    ],
    targets: [
        .binaryTarget(
            name: "mdi-mob-sdk-doc-mrz-regula-ios",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMADocScanRegulaiOS/mdi-mob-sdk-doc-mrz-regula-ios-1.0.0-rc11.zip",
            checksum: "952ac6c737f7f1e25669bca56713b113f0a7def95e632d9fadaf4af6f4568233"
        ),
        .target(
            name: "AMADocScanRegulaiOS",
            dependencies: [
                "mdi-mob-sdk-doc-mrz-regula-ios",
                .product(name: "AMADocModeliOS", package: "AMADocModeliOS"),
                .product(name: "DocumentReader", package: "DocumentReader-Swift-Package"),
                .product(name: "MRZRFID", package: "DocumentReaderMRZRFID-Swift-Package"),
            ],
            path: "Sources"
        )
    ]
)
