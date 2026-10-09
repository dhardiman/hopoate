// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Hopoate",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "Hopoate", targets: ["Hopoate"]),
        .library(name: "HopoateTestingHelpers", targets: ["HopoateTestingHelpers"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "Hopoate",
            url: "https://github.com/dhardiman/hopoate/releases/download/1.13.1/Hopoate.xcframework.zip",
            checksum: "c4103216bc0da5e585b3fec2bf7a34b2abf8c40509f1808275748786aa1c7c42"),
        .binaryTarget(
            name: "HopoateTestingHelpers",
            url: "https://github.com/dhardiman/hopoate/releases/download/1.13.1/HopoateTestingHelpers.xcframework.zip",
            checksum: "bd284e21f7391e0aa5723180e8bbbb430dd01469b1539532514ec5caaa8d85d1"),
    ],
    swiftLanguageVersions: [.v5]
)
