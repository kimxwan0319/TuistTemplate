import ProjectDescription

let project = Project(
    name: "test",
    organizationName: "com.kimxwan0319",
    targets: [
        Target(
            name: "test",
            platform: .iOS,
            product: .app,
            bundleId: "com.kimxwan0319.test",
            deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
            infoPlist: .file(path: Path("SupportingFiles/Info.plist")),
            sources: ["Sources/**"],
            resources: [
                "Resources/**"
            ]
        )
    ]
)
