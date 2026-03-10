// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "AzureCommunicationCalling",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // This is the product your app will import
        .library(
            name: "AzureCommunicationCalling",
            targets: ["AzureCommunicationCallingWrapper"]
        )
    ],
    dependencies: [
        // Git dependency
        .package(url: "https://github.com/inancyGit/ACSCommon.git", branch: "main")
    ],
    targets: [
        // 1) Binary target for the .zip
        .binaryTarget(
            name: "AzureCommunicationCalling",
            url: "https://github.com/inancyGit/SPM-ACSCalling/releases/download/2.0.1/AzureCommunicationCalling-2.18.2-beta.2.zip",
            checksum: "96b0faec320b9d6f3730826ad4d7de5933a275a2cbd27cfa27d6913003ea5c85"
        ),
        // 2) Buildable Swift target that depends on the binary + ACSCommon
        .target(
            name: "AzureCommunicationCallingWrapper",
            dependencies: [
                "AzureCommunicationCalling",
                .product(name: "AzureCommunicationCommon", package: "ACSCommon")
            ],
            path: "Source/AzureCommunicationCallingWrapper"
        )
    ],
    swiftLanguageModes: [.v5]
)
