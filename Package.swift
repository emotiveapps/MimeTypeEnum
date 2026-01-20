// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "MimeTypeEnum",
  platforms: [
    .macOS(.v12),
    .iOS(.v15),
    .tvOS(.v15),
    .watchOS(.v8)
  ],
  products: [
    .library(
      name: "MimeTypeEnum",
      targets: ["MimeTypeEnum"]
    ),
  ],
  targets: [
    .target(
      name: "MimeTypeEnum"
    ),
    .testTarget(
      name: "MimeTypeEnumTests",
      dependencies: ["MimeTypeEnum"]
    ),
  ]
)
