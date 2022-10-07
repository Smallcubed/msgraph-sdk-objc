// swift-tools-version:5.3
import PackageDescription


let package = Package(
	name: "MSGraphClientSDK",
	platforms: [
		.iOS(.v9),
		.macOS(.v10_12)
	],
	products: [
		.library(name: "MSGraphClientSDK",
                 type: .dynamic,
                 targets: ["MSGraphClientSDK"])
	],
	targets: [
		.target(
			name: "MSGraphClientSDK",
			path: "MSGraphClientSDK/MSGraphClientSDK",
			sources: [
				"Authentication",
				"Common",
				"GraphContent",
				"GraphTasks",
				"HTTPClient",
				"Middleware"
			],
			publicHeadersPath: "include",
			cSettings: [
				.headerSearchPath("Common"),
				.headerSearchPath("Common/Session Tasks"),
				.headerSearchPath("GraphContent"),
				.headerSearchPath("GraphContent/BatchContent"),
				.headerSearchPath("GraphTasks"),
				.headerSearchPath("HTTPClient"),
				.headerSearchPath("Middleware"),
				.headerSearchPath("Middleware/Implementations/Authentication"),
				.headerSearchPath("Middleware/Implementations/HTTPProvider"),
				.headerSearchPath("Middleware/Implementations/RedirectHandler"),
				.headerSearchPath("Middleware/Implementations/RetryHandler"),
				.headerSearchPath("Middleware/Options"),
				.headerSearchPath("Middleware/Protocols"),
			]
		)
	]
)
