// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Pango",
    products: [
        .library(name: "Pango", targets: ["Pango"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Brett-Best/CPango.git", .branch("bb-pkg-dev")),
        .package(url: "https://github.com/Brett-Best/SwiftGObject.git", .branch("bb-pkg-dev"))
    ],
    targets: [
        .target(name: "Pango", dependencies: ["GLibObject"]),
        .testTarget(name: "PangoTests", dependencies: ["Pango"]),
    ]
)
