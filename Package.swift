// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AzureCommunicationCalling",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "AzureCommunicationCalling", targets: ["AzureCommunicationCallingWrapper"])
    ],
    dependencies: [
            .package(name: "SPMCommon", url: "https://github.com/inancyGit/SPMCommon.git", from: "1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "AzureCommunicationCalling",
            url: "https://github.com/Azure/Communication/releases/download/v2.16.0/AzureCommunicationCalling-2.16.0.zip",
            checksum: "3dfc0b9e1ae79e1d8df622f39b1c85db8998518d2c02eb1fe6b9ae58333c6de9"
        ),
        .target(
            name: "AzureCommunicationCallingWrapper",
            dependencies: [
                .target(name: "AzureCommunicationCalling"),
                .product(name: "AzureCommunicationCommon", package: "SPMCommon")
            ],
            path: "AzureCommunicationCallingWrapper"
        )
    ],
    swiftLanguageVersions: [.v5]
)
