// swift-tools-version: 6.0
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
		.package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: "4.4.3")),
		.package(url: "https://github.com/parmar-mehul/KeychainAccess", .upToNextMajor(from: "1.0.2")),
		.package(url: "https://github.com/parmar-mehul/MMKV", .upToNextMajor(from: "2.0.0"))
	],
	targets: [
		.binaryTarget(
			name: "CovantexSDK",
			url: "https://github.com/parmar-mehul/CovantexSDK/releases/download/1.0.0/CovantexSDK.xcframework.zip",
			checksum: "fb0ade51ec72ae6b8b58db5535e02c4c120028e0ceaa289bce99aec3993377a4"
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
	swiftLanguageModes: [.v5]
)
