// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StackView",
    platforms: [
        .iOS(SupportedPlatform.IOSVersion.v10),
    ],
    products: [
        .library(name: "StackViewStatic", type: .static, targets: ["StackView"]),
        .library(name: "StackView", targets: ["StackView"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "StackView", dependencies: ["SnapKit"]),
        .testTarget(name: "StackViewTests", dependencies: ["StackView"]),
    ]
)
