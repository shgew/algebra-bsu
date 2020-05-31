// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "SquareRootMethod",
    products: [
        .library(
            name: "IterationMethods",
            targets: ["IterationMethods"]
        ),
        .executable(
            name: "SquareRootMethod",
            targets: ["SquareRootMethod"]
        )
    ],
    targets: [
        .target(name: "IterationMethods"),
        .target(
            name: "SquareRootMethod",
            dependencies: ["IterationMethods"]
        )
    ]
)
