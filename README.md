# MimeTypeEnum

<!-- TODO: Add Swift Package Index badges after package is indexed
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FYourUsername%2FMimeTypeEnum%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/YourUsername/MimeTypeEnum)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FYourUsername%2FMimeTypeEnum%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/YourUsername/MimeTypeEnum)
-->

A Swift enum providing comprehensive MIME type mappings with file extension lookup.

## Installation

Add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/YourOrg/MimeTypeEnum", from: "1.0.0")
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
