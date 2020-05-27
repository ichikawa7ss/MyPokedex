open: ## Open Xcode workspace
	open MyPokedex.xcodeproj/

.PHONY: project
project:
	mint run Carthage/Carthage carthage bootstrap --platform iOS --cache-builds
	echo 'mint run Carthage/Carthage carthage update --platform iOS --cache-builds'
	mint run SwiftGen/SwiftGen swiftgen
	mint run yonaskolb/XcodeGen xcodegen generate