// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "newrelic-ios-agent",
    platforms: [.iOS(.v12)],
    products: [
        // Single product: select this in your app.
        .library(name: "NewRelicAgentSuite", targets: ["NRWrapper"])
    ],
    targets: [
        // ----- Binary targets (unchanged) -----
        .binaryTarget(
            name: "NewRelic",
            url: "https://github.com/msaqib-mizmiz/newrelic-ios-agent/releases/download/7.5.8-network-filter.3/NewRelic.xcframework.zip",
            checksum: "9244f24b536312887354d6c7cbcb312a19a6d5337566b7e454835b2940a9eba6"
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
        ),

        // ----- Wrapper target that forces Xcode to link all six -----
        .target(
            name: "NRWrapper",
            dependencies: ["NewRelic", "Analytics", "Connectivity", "Hex", "Utilities", "JSON"],
            path: "SPMWrapper",
            sources: ["shim.swift"]
        )
    ]
)