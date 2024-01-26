// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "KindeSDK",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
    ],
    products: [
        .library(
            name: "KindeSDK",
            targets: ["KindeSDK"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/openid/AppAuth-iOS.git",
            from: "1.6.2"
        ),
        .package(url: "https://github.com/SwiftUIX/SwiftUIX.git", branch: "master"),
    ],
    targets: [
        .target(
            name: "KindeSDK",
            dependencies: [
                .product(name: "AppAuth", package: "AppAuth-iOS"),
                "SwiftUIX"
            ],
            path: "Sources/KindeSDK/"
        )
    ]
)
