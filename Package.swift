// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libshaderc",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "Libshaderc_combined", 
            targets: ["Libshaderc_combined"]
        ),
    ],
    targets: [
        // Need a dummy target to embedded correctly.
        // https://github.com/apple/swift-package-manager/issues/6069
        .target(
            name: "_Libshaderc_combined",
            dependencies: ["Libshaderc_combined"],
            path: "Sources/_Dummy"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2025.4.0-xcode26/Libshaderc_combined.xcframework.zip",
            checksum: "f5d8d4c5f031263c088cb2e51658c147194fab9361b810157d178b2b6424fad3"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
