// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FakeDocumentReader",
    products: [
        // .library(name: "FaceSDK", targets: ["FaceSDK-Target"])
        .library(name: "FakeDocumentReader", targets: ["FakeDocumentReader-Target"])
    ],
    dependencies: [
        .package(name: "RegulaCommon", url: "https://github.com/pkondrashkov/common", .branch("master")),
    ],
    targets: [
        .binaryTarget(
            name: "FakeDocumentReader",
            url: "https://pods.regulaforensics.com/RegulaCommon/doc-reader/FakeDocumentReader.xcframework.zip",
            checksum: "a57b85077f1476db5ba44918923dca36945e7f54266ad38e1bf184b369f4370d"
        ),
        .target(
            name: "FakeDocumentReader-Target",
             dependencies: [
                    .target(name: "FakeDocumentReader", condition: .when(platforms: .some([.iOS]))),
                    .target(name: "RegulaCommon", condition: .when(platforms: .some([.iOS])))
            ],
            path: "FakeDocumentReader-Target"
        )
    ]
)