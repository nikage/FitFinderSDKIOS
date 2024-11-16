// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "FitFinderSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "FitFinderSDK",
            targets: ["FitFinderSDK"]
        ),
    ],
    targets: [
        .target(
            name: "FitFinderSDK",
            dependencies: []
        ),
        .testTarget(
            name: "FitFinderSDKTests",
            dependencies: ["FitFinderSDK"]
        ),
    ]
)

