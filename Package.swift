// swift-tools-version:5.3.0
import PackageDescription

let package = Package(
    name: "AzureCommunicationCalling",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "AzureCommunicationCalling", targets: ["AzureCommunicationCalling"])
    ],
    targets: [
        .binaryTarget(
            name: "AzureCommunicationCalling",
            url: "https://github.com/raosanat/Communication/releases/download/v2.2.1-alpha.4/AzureCommunicationCalling-2.2.1-alpha.4.zip",
            checksum: "dfb1581c3425be64302d3a3b698b819f9135f9821493f7170e3b8274c14fd79b"
        )
    ]
)