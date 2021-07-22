// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FakeDocumentReader",
    products: [
        // .library(name: "FaceSDK", targets: ["FaceSDK-Target"])
        .library(name: "FakeDocumentReader", targets: ["FakeDocumentReaderTarget"])
    ],
    dependencies: [
        .package(name: "RegulaCommon", url: "https://github.com/pkondrashkov/common", from: "0.0.1"),
    ],
    targets: [
        .binaryTarget(
            name: "FakeDocumentReader",
            url: "https://pods.regulaforensics.com/RegulaCommon/doc-reader/FakeDocumentReader.xcframework.zip",
            checksum: "a57b85077f1476db5ba44918923dca36945e7f54266ad38e1bf184b369f4370d"
        ),
        .target(
            name: "FakeDocumentReaderTarget",
             dependencies: [
                    .target(name: "FakeDocumentReader", condition: .when(platforms: .some([.iOS]))),
                    .product(name: "RegulaCommon", package: "RegulaCommon")
            ],
            path: "Sources"
        )
    ]
)