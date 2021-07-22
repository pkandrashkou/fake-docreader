// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FakeDocumentReader",
    products: [
        // .library(name: "FaceSDK", targets: ["FaceSDK-Target"])
        .library(name: "FakeDocumentReader", targets: ["FaceSDK", "RegulaCommon"])
    ],
    targets: [
        .binaryTarget(
            name: "FakeDocumentReader",
            url: "https://pods.regulaforensics.com/RegulaCommon/doc-reader/FakeDocumentReader.xcframework.zip",
            checksum: "d5e2dad5dc8be7439c7ef50184c3bb03f7bc52416dc741ff5a2d4e97d88d9559"
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