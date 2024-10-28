// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "CovantexSDK",
	platforms: [ .iOS(.v13) ],
	products: [
		.library(name: "CovantexSDK", targets: ["CovantexSDK", "CovantexFrameworkWrapper"]),
	],
	dependencies: [
		.package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.10.1")),
		.package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", .upToNextMajor(from: "5.0.2")),
		.package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", branch: "master"),
		.package(url: "https://github.com/parmar-mehul/KeychainAccess", .upToNextMajor(from: "1.0.2")),
		.package(url: "https://github.com/parmar-mehul/MMKV", .upToNextMajor(from: "2.0.0"))
	],
	targets: [
		.binaryTarget(
			name: "CovantexSDK",
			url: "https://github.com/parmar-mehul/CovantexSDK/releases/download/1.0.0/CovantexSDK.xcframework.zip",
			checksum: "355c2424bdff036d6d1c9c5a675bedd0302d49fc774930cb6804b0dc85694cfc"
		),
		.target(
			name: "CovantexFrameworkWrapper",
			dependencies: [
				"CovantexSDK",
				"Alamofire",
				"ObjectMapper",
				"SwiftyJSON",
				"KeychainAccess",
				"MMKV"
			],
			path: "Sources",
			resources: [
				.process("Resources")
			]
		),
	],
	swiftLanguageVersions: [.v5]
)
