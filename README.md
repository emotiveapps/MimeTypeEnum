# MimeTypeEnum

[![Swift 5.9+](https://img.shields.io/badge/Swift-5.9+-orange.svg)](https://swift.org)
[![Platforms](https://img.shields.io/badge/Platforms-macOS%20|%20iOS%20|%20tvOS%20|%20watchOS-blue.svg)](https://developer.apple.com)

A Swift enum providing comprehensive MIME type mappings with file extension lookup.

## Installation

Add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/emotiveapps/MimeTypeEnum", from: "1.0.0")
]
```

## Usage

```swift
import MimeTypeEnum

// Get MIME type from filename
let type = MimeType.from(filename: "photo.jpg")  // .jpeg

// Get MIME type from extension
let type = MimeType.from(extension: "pdf")  // .pdf

// Get MIME type string directly
let mimeString = MimeType.mimeTypeString(for: "document.pdf")  // "application/pdf"

// Access raw MIME type string
let raw = MimeType.jpeg.rawValue  // "image/jpeg"

// Get file extensions for a MIME type
let extensions = MimeType.jpeg.extensions  // ["jpeg", "jpg", "jpe"]

// Get primary extension
let ext = MimeType.jpeg.primaryExtension  // "jpeg"
```

## Supported Types

80+ MIME types across categories:
- Text (html, css, xml, json, markdown, etc.)
- Image (jpeg, png, gif, webp, heic, svg, etc.)
- Audio (mp3, wav, flac, ogg, etc.)
- Video (mp4, webm, mov, avi, etc.)
- Application (pdf, zip, wasm, etc.)
- Fonts (woff, woff2, ttf, otf)
- Microsoft Office (doc, docx, xls, xlsx, etc.)
- Apple iWork (pages, numbers, keynote)

Unknown extensions return `.octetStream` (`application/octet-stream`).

## Acknowledgments

Inspired by [onevcat/MimeType](https://github.com/onevcat/MimeType).

## License

MIT
