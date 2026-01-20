import Foundation

/// A comprehensive enumeration of MIME types with file extension mappings.
public enum MimeType: String, Sendable, CaseIterable {
    // MARK: - Text
    case html = "text/html"
    case css = "text/css"
    case xml = "text/xml"
    case mathml = "text/mathml"
    case plain = "text/plain"
    case jad = "text/vnd.sun.j2me.app-descriptor"
    case wml = "text/vnd.wap.wml"
    case htc = "text/x-component"
    case csv = "text/csv"
    case calendar = "text/calendar"
    case markdown = "text/markdown"

    // MARK: - Image
    case gif = "image/gif"
    case jpeg = "image/jpeg"
    case png = "image/png"
    case tiff = "image/tiff"
    case wbmp = "image/vnd.wap.wbmp"
    case ico = "image/x-icon"
    case jng = "image/x-jng"
    case bmp = "image/x-ms-bmp"
    case svg = "image/svg+xml"
    case webp = "image/webp"
    case heic = "image/heic"
    case heif = "image/heif"
    case avif = "image/avif"
    case apng = "image/apng"

    // MARK: - Audio
    case midi = "audio/midi"
    case mp3 = "audio/mpeg"
    case ogg = "audio/ogg"
    case m4a = "audio/x-m4a"
    case realaudio = "audio/x-realaudio"
    case wav = "audio/wav"
    case flac = "audio/flac"
    case aac = "audio/aac"
    case weba = "audio/webm"
    case opus = "audio/opus"

    // MARK: - Video
    case threegpp = "video/3gpp"
    case mp2t = "video/mp2t"
    case mp4 = "video/mp4"
    case mpeg = "video/mpeg"
    case quicktime = "video/quicktime"
    case webm = "video/webm"
    case flv = "video/x-flv"
    case m4v = "video/x-m4v"
    case mng = "video/x-mng"
    case msAsf = "video/x-ms-asf"
    case wmv = "video/x-ms-wmv"
    case avi = "video/x-msvideo"
    case mkv = "video/x-matroska"

    // MARK: - Application
    case javascript = "application/javascript"
    case json = "application/json"
    case pdf = "application/pdf"
    case zip = "application/zip"
    case gzip = "application/gzip"
    case tar = "application/x-tar"
    case bzip2 = "application/x-bzip2"
    case sevenZip = "application/x-7z-compressed"
    case rar = "application/x-rar-compressed"
    case octetStream = "application/octet-stream"

    // XML-based
    case atom = "application/atom+xml"
    case rss = "application/rss+xml"
    case xhtml = "application/xhtml+xml"
    case xspf = "application/xspf+xml"

    // Fonts
    case woff = "application/font-woff"
    case woff2 = "font/woff2"
    case ttf = "font/ttf"
    case otf = "font/otf"
    case eot = "application/vnd.ms-fontobject"

    // Java
    case javaArchive = "application/java-archive"
    case javaJnlp = "application/x-java-jnlp-file"
    case javaArchiveDiff = "application/x-java-archive-diff"

    // Microsoft Office (Legacy)
    case msWord = "application/msword"
    case msExcel = "application/vnd.ms-excel"
    case msPowerpoint = "application/vnd.ms-powerpoint"

    // Microsoft Office (Modern)
    case docx = "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
    case xlsx = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
    case pptx = "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    // Apple
    case mpegurl = "application/vnd.apple.mpegurl"
    case keynote = "application/vnd.apple.keynote"
    case numbers = "application/vnd.apple.numbers"
    case pages = "application/vnd.apple.pages"

    // Google
    case kml = "application/vnd.google-earth.kml+xml"
    case kmz = "application/vnd.google-earth.kmz"

    // Other application types
    case rtf = "application/rtf"
    case postscript = "application/postscript"
    case macBinhex = "application/mac-binhex40"
    case wmlc = "application/vnd.wap.wmlc"
    case cocoa = "application/x-cocoa"
    case makeself = "application/x-makeself"
    case perl = "application/x-perl"
    case pilot = "application/x-pilot"
    case rpm = "application/x-redhat-package-manager"
    case sea = "application/x-sea"
    case shockwaveFlash = "application/x-shockwave-flash"
    case stuffit = "application/x-stuffit"
    case tcl = "application/x-tcl"
    case x509Cert = "application/x-x509-ca-cert"
    case xpinstall = "application/x-xpinstall"
    case sqlite = "application/vnd.sqlite3"
    case epub = "application/epub+zip"
    case wasm = "application/wasm"
    case yaml = "application/x-yaml"

    // MARK: - Multipart
    case formData = "multipart/form-data"

    // MARK: - Extension Mapping

    /// File extensions associated with each MIME type
    public var extensions: [String] {
        switch self {
        // Text
        case .html: return ["html", "htm", "shtml"]
        case .css: return ["css"]
        case .xml: return ["xml"]
        case .mathml: return ["mml"]
        case .plain: return ["txt", "text", "log", "conf", "ini"]
        case .jad: return ["jad"]
        case .wml: return ["wml"]
        case .htc: return ["htc"]
        case .csv: return ["csv"]
        case .calendar: return ["ics", "ifb"]
        case .markdown: return ["md", "markdown"]

        // Image
        case .gif: return ["gif"]
        case .jpeg: return ["jpeg", "jpg", "jpe"]
        case .png: return ["png"]
        case .tiff: return ["tif", "tiff"]
        case .wbmp: return ["wbmp"]
        case .ico: return ["ico"]
        case .jng: return ["jng"]
        case .bmp: return ["bmp"]
        case .svg: return ["svg", "svgz"]
        case .webp: return ["webp"]
        case .heic: return ["heic"]
        case .heif: return ["heif"]
        case .avif: return ["avif"]
        case .apng: return ["apng"]

        // Audio
        case .midi: return ["mid", "midi", "kar"]
        case .mp3: return ["mp3"]
        case .ogg: return ["ogg", "oga"]
        case .m4a: return ["m4a"]
        case .realaudio: return ["ra"]
        case .wav: return ["wav"]
        case .flac: return ["flac"]
        case .aac: return ["aac"]
        case .weba: return ["weba"]
        case .opus: return ["opus"]

        // Video
        case .threegpp: return ["3gpp", "3gp"]
        case .mp2t: return ["ts"]
        case .mp4: return ["mp4", "m4p"]
        case .mpeg: return ["mpeg", "mpg", "mpe"]
        case .quicktime: return ["mov", "qt"]
        case .webm: return ["webm"]
        case .flv: return ["flv"]
        case .m4v: return ["m4v"]
        case .mng: return ["mng"]
        case .msAsf: return ["asx", "asf"]
        case .wmv: return ["wmv"]
        case .avi: return ["avi"]
        case .mkv: return ["mkv"]

        // Application - common
        case .javascript: return ["js", "mjs"]
        case .json: return ["json"]
        case .pdf: return ["pdf"]
        case .zip: return ["zip"]
        case .gzip: return ["gz", "gzip"]
        case .tar: return ["tar"]
        case .bzip2: return ["bz2"]
        case .sevenZip: return ["7z"]
        case .rar: return ["rar"]
        case .octetStream: return ["bin", "exe", "dll", "deb", "dmg", "iso", "img", "msi", "msp", "msm"]

        // XML-based
        case .atom: return ["atom"]
        case .rss: return ["rss"]
        case .xhtml: return ["xhtml", "xht"]
        case .xspf: return ["xspf"]

        // Fonts
        case .woff: return ["woff"]
        case .woff2: return ["woff2"]
        case .ttf: return ["ttf"]
        case .otf: return ["otf"]
        case .eot: return ["eot"]

        // Java
        case .javaArchive: return ["jar", "war", "ear"]
        case .javaJnlp: return ["jnlp"]
        case .javaArchiveDiff: return ["jardiff"]

        // Microsoft Office (Legacy)
        case .msWord: return ["doc"]
        case .msExcel: return ["xls"]
        case .msPowerpoint: return ["ppt"]

        // Microsoft Office (Modern)
        case .docx: return ["docx"]
        case .xlsx: return ["xlsx"]
        case .pptx: return ["pptx"]

        // Apple
        case .mpegurl: return ["m3u8"]
        case .keynote: return ["key"]
        case .numbers: return ["numbers"]
        case .pages: return ["pages"]

        // Google
        case .kml: return ["kml"]
        case .kmz: return ["kmz"]

        // Other application types
        case .rtf: return ["rtf"]
        case .postscript: return ["ps", "eps", "ai"]
        case .macBinhex: return ["hqx"]
        case .wmlc: return ["wmlc"]
        case .cocoa: return ["cco"]
        case .makeself: return ["run"]
        case .perl: return ["pl", "pm"]
        case .pilot: return ["prc", "pdb"]
        case .rpm: return ["rpm"]
        case .sea: return ["sea"]
        case .shockwaveFlash: return ["swf"]
        case .stuffit: return ["sit"]
        case .tcl: return ["tcl", "tk"]
        case .x509Cert: return ["der", "pem", "crt", "cer"]
        case .xpinstall: return ["xpi"]
        case .sqlite: return ["sqlite", "sqlite3", "db"]
        case .epub: return ["epub"]
        case .wasm: return ["wasm"]
        case .yaml: return ["yaml", "yml"]

        // Multipart
        case .formData: return []
        }
    }

    /// The primary (preferred) file extension for this MIME type
    public var primaryExtension: String? {
        extensions.first
    }

    // MARK: - Lookup

    /// Get MIME type from a filename or path
    /// - Parameter filename: The filename or path to check
    /// - Returns: The matching MIME type, or `.octetStream` if unknown
    public static func from(filename: String) -> MimeType {
        let ext = (filename as NSString).pathExtension.lowercased()
        return from(extension: ext)
    }

    /// Get MIME type from a file extension
    /// - Parameter extension: The file extension (without leading dot)
    /// - Returns: The matching MIME type, or `.octetStream` if unknown
    public static func from(extension ext: String) -> MimeType {
        let lowercased = ext.lowercased()
        return extensionToMime[lowercased] ?? .octetStream
    }

    /// Get MIME type string from a filename or path
    /// - Parameter filename: The filename or path to check
    /// - Returns: The MIME type string
    public static func mimeTypeString(for filename: String) -> String {
        from(filename: filename).rawValue
    }

    // MARK: - Private

    /// Cached extension to MIME type lookup dictionary
    private static let extensionToMime: [String: MimeType] = {
        var dict: [String: MimeType] = [:]
        for type in MimeType.allCases {
            for ext in type.extensions {
                dict[ext] = type
            }
        }
        return dict
    }()
}

// MARK: - CustomStringConvertible

extension MimeType: CustomStringConvertible {
    public var description: String {
        rawValue
    }
}
