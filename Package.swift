// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "newrelic-ios-agent",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Keep product name "NewRelic" so your app can keep selecting/importing it.
        .library(
            name: "NewRelic",
            targets: ["NewRelic", "Analytics", "Connectivity", "Hex", "Utilities", "JSON"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "NewRelic",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.1/NewRelic.xcframework.zip",
            checksum: "2c13e47663520a4c87f591aef74395baa405d83ae5ba3460802d3206f4696f9b"
        ),
        .binaryTarget(
            name: "Analytics",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.1/Analytics.xcframework.zip",
            checksum: "a499d6b4b108dc40793864f35036a3d9ec049f6c2395b664d3bb5a87ebfc7c6f"
        ),
        .binaryTarget(
            name: "Connectivity",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.1/Connectivity.xcframework.zip",
            checksum: "d04644add54404216fdcddfd3df02865a559b3b30a707a605e0dae6940f722d1"
        ),
        .binaryTarget(
            name: "Hex",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.1/Hex.xcframework.zip",
            checksum: "4455cf81ab1ae04f032ca828d0a8db02b486babc35832f40737d80142419b5fe"
        ),
        .binaryTarget(
            name: "Utilities",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.1/Utilities.xcframework.zip",
            checksum: "aa97582cf9431dfab9762a45aed4cc7ff33c59b9c030c547ccf6810ad9408dab"
        ),
        .binaryTarget(
            name: "JSON",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.1/JSON.xcframework.zip",
            checksum: "5dc3ddcccb43b657716cd3ef2b3371889c7b437568945180a09ce25be324d629"
        )
    ]
)
