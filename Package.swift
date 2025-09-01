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
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.3/NewRelic.xcframework.zip",
            checksum: "e653079f88456f437ce803b287dc274fa9ef8ad57ebceac48603c6e813c7f5a8"
        ),
        .binaryTarget(
            name: "Analytics",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.3/Analytics.xcframework.zip",
            checksum: "eba6dcb9666d9756b734f6e942904a0447557e853ca50607b4fd002ee991f243"
        ),
        .binaryTarget(
            name: "Connectivity",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.3/Connectivity.xcframework.zip",
            checksum: "094d62ce79fbdd45bfcae7474f86ad42cd0ecbcd4fa9e341e33f05a60c73a97b"
        ),
        .binaryTarget(
            name: "Hex",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.3/Hex.xcframework.zip",
            checksum: "160870a0160ba95c792fa4e2db377d3fb93e3ded500e6f13f5cca8b706e30a14"
        ),
        .binaryTarget(
            name: "Utilities",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.3/Utilities.xcframework.zip",
            checksum: "ec8162f2d7aeb652840a61dc9136066b079bc962a0809473f6f330705d9bb762"
        ),
        .binaryTarget(
            name: "JSON",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.3/JSON.xcframework.zip",
            checksum: "d0479b67f82c83b07555308a2680e255dcbd53d343700878769faa53f554b8e4"
        )
    ]
)