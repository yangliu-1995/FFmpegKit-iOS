// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FFmpegKit",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FFmpegKit",
            targets: [
                "FFmpegkitLib",
            ]),
    ],
    targets: [
        .binaryTarget(name: "FFmpegkitLib", path: "libFFmpegKit.xcframework"),
    ]
)
