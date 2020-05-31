// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "IterationMethods",
    products: [
        .library(
            name: "IterationMethodsCore",
            targets: ["IterationMethodsCore"]
        ),
        .executable(
            name: "IterationMethods",
            targets: ["IterationMethods"]
        )
    ],
    targets: [
        .target(name: "IterationMethodsCore"),
        .target(
            name: "IterationMethods",
            dependencies: ["IterationMethodsCore"]
        )
    ]
)
