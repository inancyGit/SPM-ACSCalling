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
            url: "https://github.com/raosanat/Communication/releases/download/v2.2.1-alpha.2/AzureCommunicationCalling-2.2.1-alpha.2.zip",
            checksum: "865d45d08780bc118afd73b7eca4f8a03a60241f913f9023f70020220c32f85b"
        )
    ]
)