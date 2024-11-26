// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DeviceCornerRadius",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DeviceCornerRadius",
            targets: ["DeviceCornerRadiusPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "DeviceCornerRadiusPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/DeviceCornerRadiusPlugin"),
        .testTarget(
            name: "DeviceCornerRadiusPluginTests",
            dependencies: ["DeviceCornerRadiusPlugin"],
            path: "ios/Tests/DeviceCornerRadiusPluginTests")
    ]
)