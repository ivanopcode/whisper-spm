// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "whisper-spm",
    products: [
        .library(
            name: "Whisper",
            targets: ["WhisperPackage"]),
    ],
    targets: [
        .target(
            name: "WhisperPackage",
            dependencies: ["WhisperFramework"]
        ),
        .binaryTarget(
            name: "WhisperFramework",
            url: "https://github.com/ggml-org/whisper.cpp/releases/download/v1.7.5/whisper-v1.7.5-xcframework.zip",
            checksum: "c7faeb328620d6012e130f3d705c51a6ea6c995605f2df50f6e1ad68c59c6c4a"
        )
    ]
)
