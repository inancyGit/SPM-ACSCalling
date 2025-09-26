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
            url: "https://github.com/Azure/Communication/releases/download/v2.16.0/AzureCommunicationCalling-2.16.0.zip",
            checksum: "30706c67938ee54d788aac1f66f4278ff53defb0beea6c9fc7c7567e2027af61"
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
