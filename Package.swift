// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DeviceCornerRadiusCapacitor",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DeviceCornerRadiusCapacitor",
            targets: ["DeviceCornerRadiusCapacitorPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "DeviceCornerRadiusCapacitorPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/DeviceCornerRadiusCapacitorPlugin"),
        .testTarget(
            name: "DeviceCornerRadiusCapacitorPluginTests",
            dependencies: ["DeviceCornerRadiusCapacitorPlugin"],
            path: "ios/Tests/DeviceCornerRadiusCapacitorPluginTests")
    ]
)