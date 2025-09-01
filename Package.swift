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
            checksum: "839b22985d635b930a2b110f2fb0cbc01b76a5fbdf8414db38f3ccc08ce6d523"
        ),
        .binaryTarget(
            name: "Analytics",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.3/Analytics.xcframework.zip",
            checksum: "b969d868536b4b3a7286a137ac5ee2e4a07349b29f654334dc8514dd65203e02"
        ),
        .binaryTarget(
            name: "Connectivity",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.3/Connectivity.xcframework.zip",
            checksum: "68e1050de0d0b61decb1070eb90e42a6126fba3400afe52b9004c8a1123cd1b0"
        ),
        .binaryTarget(
            name: "Hex",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.3/Hex.xcframework.zip",
            checksum: "44caa6ad0f5b82384448a409860822287f1565fdc3a48a55baa368eafd5af77e"
        ),
        .binaryTarget(
            name: "Utilities",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.3/Utilities.xcframework.zip",
            checksum: "270b5936e894994f83b3be33be476a3947ec3618f593bd60851586852bc5e564"
        ),
        .binaryTarget(
            name: "JSON",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.3/JSON.xcframework.zip",
            checksum: "b836f6993c17becede3dd4893463e5715c8a881e4faf8119c50101d38021004a"
        )
    ]
)