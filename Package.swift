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
        // Your Git dependency
        .package(name: "AzureCommunicationCommon", url: "https://github.com/inancyGit/SPMCommon.git", from: "1.0.0")
    ],
    targets: [
        // 1) Binary target for the .zip
        .binaryTarget(
            name: "AzureCommunicationCalling",
            url: "https://github.com/Azure/Communication/releases/download/v2.16.0/AzureCommunicationCalling-2.16.0.zip",
            checksum: "30706c67938ee54d788aac1f66f4278ff53defb0beea6c9fc7c7567e2027af61"
        ),
        // 2) Buildable Swift target that depends on the binary + SPMCommon
        .target(
            name: "AzureCommunicationCallingWrapper",
            dependencies: [
                "AzureCommunicationCalling",
                // IMPORTANT: replace "SPMCommon" below if the actual product/module name differs
                .product(name: "AzureCommunicationCommon", package: "AzureCommunicationCommon")
            ],
            path: "Source/AzureCommunicationCallingWrapper"
        )
    ],
    swiftLanguageModes: [.v5]
)
