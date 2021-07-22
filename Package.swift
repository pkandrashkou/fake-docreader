// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FakeDocumentReader",
    products: [
        // .library(name: "FaceSDK", targets: ["FaceSDK-Target"])
        .library(name: "FakeDocumentReader", targets: ["FakeDocumentReader", "RegulaCommon"])
    ],
    targets: [
        .binaryTarget(
            name: "FakeDocumentReader",
            url: "https://pods.regulaforensics.com/RegulaCommon/doc-reader/FakeDocumentReader.xcframework.zip",
            checksum: "a57b85077f1476db5ba44918923dca36945e7f54266ad38e1bf184b369f4370d"
        ),
        .binaryTarget(
            name: "RegulaCommon",
            url: "https://pods.regulaforensics.com/RegulaCommon/regula-common/RegulaCommon.xcframework.zip",
            checksum: "9ef592c40d960420c0dba3c49e97f2f3071baaff60a1e00b2b9d99f6cf6d656a"
        ),
        // .target(
        //     name: "FaceSDK-Target",
        //      dependencies: [
        //             .target(name: "FaceSDK", condition: .when(platforms: .some([.iOS]))),
        //             .target(name: "RegulaCommon", condition: .when(platforms: .some([.iOS])))
        //     ],
        //     path: "FaceSDK-Target"
        // )
    ]
)