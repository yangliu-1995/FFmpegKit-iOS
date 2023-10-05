// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FFmpegKit-iOS",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FFmpegKit-iOS",
            targets: [
                "FFmpegkitLib",
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/kingslay/FFmpegKit.git", from: "6.0.1"),
    ],
    targets: [
        .binaryTarget(name: "FFmpegkitLib", path: "libFFmpegKit.xcframework"),
    ]
)
