// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MFSIdentifier",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MFSIdentifier",
            targets: ["MFSIdentifier"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "MFSIdentifier",
                dependencies: ["MFSIdentifierObjC"],
                path: "Sources/MFSIdentifier", 
                cSettings: [
                    .headerSearchPath("../MFSIdentifierObjC/MFSCache"),
                    .headerSearchPath("../MFSIdentifierObjC/MFSJSONEntity"),
                    .define("SWIFT_PACKAGE", to: "1"),
                    .unsafeFlags(["-fobjc-arc"], .when(configuration: .release))
                
                ]),
        .target(
            name: "MFSIdentifierObjC", dependencies: [],
            path: "Sources/MFSIdentifierObjC",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("Category"),
                .headerSearchPath("MFSCache"),
                .headerSearchPath("MFSCache/MFSCacheManager"),
                .headerSearchPath("MFSCache/AuxCategory"),
                .headerSearchPath("MFSJSONEntity")
            ]),
        
        .testTarget(
            name: "MFSIdentifierTests",
            dependencies: ["MFSIdentifier"]),
    ]
)
