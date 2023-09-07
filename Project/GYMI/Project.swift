import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "GYMI",
    organizationName: "Team-Ampersand",
    targets: [
        Target(
            name: "GYMI",
            platform: .iOS,
            product: .app,
            productName: "GYMI",
            bundleId: "io.tuist.GYMI",
            deploymentTarget: .iOS(targetVersion: "15.0", devices: .iphone),
            infoPlist: "Support/Info.plist",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            headers: .headers(
                public: ["Sources/public/A/**", "Sources/public/B/**"],
                private: "Sources/private/**",
                project: ["Sources/project/A/**", "Sources/project/B/**"]
            )
        )
    ]
)
