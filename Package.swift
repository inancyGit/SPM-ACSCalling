// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "AzureCommunicationCalling",
    platforms: [
        .iOS(.v13)
    ],
    products: [
         // Products define the executables and libraries a package produces, and make them visible to other packages.
         .library(
             name: "AzureCommunicationCalling",
             targets: ["AzureCommunicationCallingWrapper"])
     ],
    dependencies: [ // to use a package from SPMCommon (common sdk)
            .package(url: "https://github.com/inancyGit/SPMCommon.git", from: "1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "AzureCommunicationCalling",
            url: "https://github.com/Azure/Communication/releases/download/v2.16.0/AzureCommunicationCalling-2.16.0.zip",
            checksum: "30706c67938ee54d788aac1f66f4278ff53defb0beea6c9fc7c7567e2027af61"
        ),

        .target(
            name: "AzureCommunicationCallingWrapper",
            dependencies: [
                .target(name: "AzureCommunicationCalling"),
                .product(name: "AzureCommunicationCommon", package: "SPMCommon")
            ],
            path: "Source/AzureCommunicationCallingWrapper"
        )
    ],
    swiftLanguageModes: [.v5]
)

