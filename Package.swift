// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AzureCommunicationCalling",
    platforms: [
        .macOS(.v11), .iOS(.v12)
    ],
    products: [
        .library(name: "AzureCommunicationCalling", targets: ["AzureCommunicationCallingWrapper"])
    ],
    dependencies: [
            .package(name: "AzureCommunicationCommon", url: "https://github.com/raosanat/SwiftPM-AzureCommunicationCommon.git", from: "1.0.2")
    ],
    targets: [
        .binaryTarget(
            name: "AzureCommunicationCalling",
            url: "https://github.com/Azure/communication/releases/download/v2.2.0-beta.4/AzureCommunicationCalling-2.2.0-beta.4.zip",
            checksum: "dfb1581c3425be64302d3a3b698b819f9135f9821493f7170e3b8274c14fd79b"
        ),
        .target(
            name: "AzureCommunicationCallingWrapper",
            dependencies: [
                .target(name: "AzureCommunicationCalling"),
                .product(name: "AzureCommunicationCommon", package: "AzureCommunicationCommon")
            ],
            path: "AzureCommunicationCallingWrapper"
        )
    ],
    swiftLanguageVersions: [.v5]
)
