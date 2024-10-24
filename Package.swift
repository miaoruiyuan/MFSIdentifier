// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MFSIdentifierSPM",
    platforms: [.iOS(.v17),
                .macOS(.v10_14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MFSIdentifierSPM",
            targets: ["MFSIdentifierSPM"])
    ],
    targets: [
        .target(name: "Objc", 
                dependencies: [],
                path: "Sources/Objc",
                exclude: ["Info.plist"],
                publicHeadersPath: "include",
                cSettings: [.headerSearchPath("include"),
                            .headerSearchPath("Category"),
                           .headerSearchPath("MFSCache"),
                           .headerSearchPath("MFSCache/MFSCacheManager"),
                            .headerSearchPath("MFSCache/AuxCategory"),
                           .headerSearchPath("MFSCache/MFSJSONEntity"),
                ]),
            .target(
            name: "MFSIdentifierSPM",
            dependencies: ["Objc"],
            path: "Sources/MFSIdentifierSPM"),
        .testTarget(
            name: "MFSIdentifierSPMTests",
            dependencies: ["MFSIdentifierSPM"]),
    ]
)
