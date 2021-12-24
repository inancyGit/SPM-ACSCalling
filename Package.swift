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
            url: "https://github.com/raosanat/Communication/releases/download/v2.2.1-alpha.1/AzureCommunicationCalling-2.2.1-alpha.1.zip",
            checksum: "105012f6aa8a44edd8e91027198fe778c6bb1feee7052e14b8a7f0ccb7e36c3c"
        )
    ]
)