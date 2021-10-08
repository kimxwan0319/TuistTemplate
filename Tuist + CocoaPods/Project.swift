import ProjectDescription

let project = Project(
    name: "<ProjectName>",
    organizationName: "<OrganizationName>",
    targets: [
        Target(
            name: "<TargetName>",
            platform: .iOS,
            product: .app,
            bundleId: "<OrganizationName.TargetName>",
            deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
            infoPlist: .file(path: Path("SupportingFiles/Info.plist")),
            sources: ["Sources/**"],
            resources: [
                "Resources/**"
            ],
            dependencies: [
                .cocoapods(path: ".")
            ]
        )
    ]
)
