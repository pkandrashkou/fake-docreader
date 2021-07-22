// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FakeDocumentReader",
    products: [
        // .library(name: "FaceSDK", targets: ["FaceSDK-Target"])
        .library(name: "FakeDocumentReader", targets: ["FakeDocumentReaderTarget"])
    ],
    dependencies: [
        .package(name: "RegulaCommon", url: "https://github.com/pkondrashkov/common", .exact("0.0.3")),
    ],
    targets: [
        .binaryTarget(
            name: "FakeDocumentReader",
            url: "https://pods.regulaforensics.com/RegulaCommon/doc-reader/0.0.3/FakeDocumentReader.xcframework.zip",
            checksum: "28132c969b69ebd4edfe7e9581a52d082c89589c316d66e527eea23803ff8f02"
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