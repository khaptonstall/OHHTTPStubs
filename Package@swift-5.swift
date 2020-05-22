// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "OHHTTPStubs",
    platforms: [
        .macOS(.v10_10), .iOS(.v8), .watchOS(.v2), .tvOS(.v9)
    ],
    products: [
        .library(
            name: "OHHTTPStubs",
            targets: [
                "OHHTTPStubs",
            ]
        ),
        .library(
            name: "OHHTTPStubsSwift",
            targets: [
                "OHHTTPStubsSwift"
            ]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "OHHTTPStubs",
            dependencies: []),
        .testTarget(
            name: "OHHTTPStubsTests",
            dependencies: ["OHHTTPStubs"]),
        .target(
            name: "OHHTTPStubsSwift",
            dependencies: ["OHHTTPStubs"]),
        .testTarget(
            name: "OHHTTPStubsSwiftTests",
            dependencies: ["OHHTTPStubsSwift", "OHHTTPStubs"]
        )
    ]
)
