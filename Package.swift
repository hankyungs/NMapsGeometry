// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "NMapsGeometry",
    defaultLocalization: "ko",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "NMapsGeometry",
            targets: [
                "NMapsGeometry",
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "NMapsGeometry",
            url: "https://github.com/jaemyeong/NMapsGeometry/releases/download/1.0.1/NMapsGeometry.xcframework.zip",
            checksum: "5b2440242ed4a7e18b941b4e491a8899e980a68a00a039323ca9c4ac5dd77613"
        ),
    ]
)
