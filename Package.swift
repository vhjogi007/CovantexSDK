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
		.package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: "4.4.3")),
		.package(url: "https://github.com/parmar-mehul/KeychainAccess", .upToNextMajor(from: "1.0.2")),
		.package(url: "https://github.com/parmar-mehul/MMKV", .upToNextMajor(from: "2.0.0"))
	],
	targets: [
		.binaryTarget(
			name: "CovantexSDK",
			url: "https://github.com/vhjogi007/CovantexSDK/releases/download/1.0.4/CovantexSDK.xcframework.zip",
			checksum: "0c3056a0a9002ac4abdf74736a19221ede3ddca41b65848254ae5e3345467b70"
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
