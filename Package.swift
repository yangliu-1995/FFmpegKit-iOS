// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FFmpegKit-iOS",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FFmpegKit-iOS",
            targets: [
                "FFmpegkitLib", "Dummy",
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/yangliu-1995/FFmpegKit.git", from: "6.1.0"),
    ],
    targets: [
        .binaryTarget(name: "FFmpegkitLib", path: "libFFmpegKit.xcframework"),
        .target(name: "Dummy", dependencies: ["FFmpegKit"]),
    ]
)
