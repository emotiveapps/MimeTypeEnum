import Testing
@testable import MimeTypeEnum

@Test func testMimeTypeFromExtension() {
    #expect(MimeType.from(extension: "jpg") == .jpeg)
    #expect(MimeType.from(extension: "PDF") == .pdf)
    #expect(MimeType.from(extension: "html") == .html)
    #expect(MimeType.from(extension: "unknown") == .octetStream)
}

@Test func testMimeTypeFromFilename() {
    #expect(MimeType.from(filename: "photo.jpg") == .jpeg)
    #expect(MimeType.from(filename: "/path/to/document.pdf") == .pdf)
    #expect(MimeType.from(filename: "index.html") == .html)
    #expect(MimeType.from(filename: "file.unknown") == .octetStream)
}

@Test func testMimeTypeString() {
    #expect(MimeType.mimeTypeString(for: "image.png") == "image/png")
    #expect(MimeType.mimeTypeString(for: "data.json") == "application/json")
}

@Test func testExtensions() {
    #expect(MimeType.jpeg.extensions.contains("jpg"))
    #expect(MimeType.jpeg.extensions.contains("jpeg"))
    #expect(MimeType.html.extensions.contains("html"))
    #expect(MimeType.html.extensions.contains("htm"))
}

@Test func testPrimaryExtension() {
    #expect(MimeType.jpeg.primaryExtension == "jpeg")
    #expect(MimeType.pdf.primaryExtension == "pdf")
    #expect(MimeType.formData.primaryExtension == nil)
}

@Test func testRawValue() {
    #expect(MimeType.jpeg.rawValue == "image/jpeg")
    #expect(MimeType.pdf.rawValue == "application/pdf")
    #expect(MimeType.json.rawValue == "application/json")
}
