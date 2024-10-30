# CovantexSDK-XCFramework for Covantex APIs

This repository hosts the CovantexSDK framework for iOS, macOS Catalyst as an XCFramework, distributed via Swift Package Manager (SPM) XCFramework.

## Framework Contents
This XCFramework includes the following targets for different platforms:
- **CovantexSDK-iOS**: For iOS devices.
- **CovantexSDK-iOS-Simulator**: For iOS Simulator.
- **CovantexSDK-macOS-Catalyst**: For macOS Catalyst (iPad apps running on macOS).

## XCFramework Architectures
The XCFramework is created by combining multiple architectures to support various platforms. Currently, the following architectures are supported:
- **iOS**:
  - `ios-arm64`
  - `ios-arm64_x86_64-simulator`
  - `ios-arm64_x86_64-maccatalyst`
  
## Requirements
- **Xcode**: Version 16.0 or later
- **Swift**: Version 6.0 || Version 5.10 or later

## Integration via Swift Package Manager

To use XCFramework in your project via Swift Package Manager (SPM), follow these steps:
1. Open your Xcode project.
2. Go to **File > Add Packages**.
3. Enter the URL of this repository in the search field. 
	```swift
	dependencies: [
		.package(url: "https://username@bitbucket.org/medsymphonymobile/mobile-sdk-ios-xcframework.git", .upToNextMajor(from: "1.0.72"))
	]
	```
4. Choose the version and the desired targets you want to include in your project.
5. Click **Add Package**.

The CovantexSDK as framework will now be integrated into your project and ready for use.

## Supported Platforms
This XCFramework supports:
- iOS 
- iOS simulator
- macOS Catalyst

### Benefits of XCFrameworks
- Multi-Platform Support: Bundle code for iOS, macOS, tvOS, and watchOS in a single framework.
- Simplicity and Maintenance: Easier version management and reduced complexity in dependency management.
- Binary Compatibility: Ensures compatibility across different architectures, making it easier to distribute and use the framework.

## Notes
- This XCFramework is built for **distribution** using `BUILD_LIBRARY_FOR_DISTRIBUTION=YES`, ensuring compatibility with binary frameworks and future Swift versions.
- Make sure to select the correct target platform when using MMKV in your project to avoid compatibility issues.
- Clearing SPMs package cache is the only way I know how to mitigate issue of below issue. The package caches lives at:
> checksum of downloaded artifact of binary target [...] does not match checksum specified by the manifest [...]
```
rm -rf ~/Library/Developer/Xcode/DerivedData
rm -rf ~/Library/Caches/org.swift.swiftpm
rm -rf ~/Library/org.swift.swiftpm/configuration
rm -rf ~/Library/org.swift.swiftpm/security
```
- Re-fetch the package dependencies by selecting File > Packages > Reset Package Caches in Xcode.

## Covantex APIs

* Swagger UI
    - Covantex
        - Dev
            * [API-Dev](https://api-dev.covantex.com/swagger/#/)
            * [FD-Vendors](https://fd-vendors.covantex.com/swagger/ui/index)
            * [FD-PCP-Dev](https://fd-pcp-dev.covantex.com/swagger/ui/index#/Physicians)
        - Alpha 
            * [API-Alpha](https://api-alpha.covantex.com/swagger/#/)
        - Prod
            * [API-Prod](https://api-dev.covantex.com/swagger/#/)
            * [FD-Vendors](https://fd-vendors.covantex.com/swagger/ui/index)
            * [FD-PCP-Prod](https://fd-pcp.covantex.com/swagger/ui/index#/Physicians)
    - Ocenture
        - Dev
            * [API-Dev](https://api-dev-ocenture.covantex.com/swagger/#/)
        - Alpha
            * [API-Alpha](https://api-alpha-ocenture.covantex.com/swagger/#/)
