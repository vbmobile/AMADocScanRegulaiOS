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
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMADocScanRegulaiOS/mdi-mob-sdk-doc-mrz-regula-ios-1.0.0-rc12.zip",
            checksum: "276fc89d5245bcdf1ab86287980b2668b18eae759b6e99dbc6fb74438a3fea0d"
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
