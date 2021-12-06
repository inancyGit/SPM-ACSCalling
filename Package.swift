
import PackageDescription

let package = Package(
    name: "AzureCommunicationCalling",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "AzureCommunicationCalling", targets: ["AzureCommunicationCalling"])
    ],
    dependencies: [
        .package(name: "AzureCommunicationCommon", url: "https://github.com/Azure/SwiftPM-AzureCommunicationCommon.git", from: "1.0.2")
    ],
    targets: [
        .binaryTarget(
            name: "AzureCommunicationCalling",
            url: "https://github.com/Azure/communication/releases/download/v2.2.0-beta.1/AzureCommunicationCalling-2.2.0-beta.1.zip"
        )
    ]
)

