// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import SwiftyJSON

/// This object represents a file ready to be downloaded. The file can be downloaded via the link https://api.telegram.org/file/bot<token>/<file_path>. It is guaranteed that the link will be valid for at least 1 hour. When the link expires, a new one can be requested by calling getFile.
/// Maximum file size to download is 20 MB
///
/// - SeeAlso: <https://core.telegram.org/bots/api#file>

public struct File: JsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: JSON

    /// Unique identifier for this file
    public var file_id: String {
        get { return json["file_id"].stringValue }
        set { json["file_id"].stringValue = newValue }
    }

    /// Optional. File size, if known
    public var file_size: Int? {
        get { return json["file_size"].int }
        set { json["file_size"].int = newValue }
    }

    /// Optional. File path. Use https://api.telegram.org/file/bot<token>/<file_path> to get the file.
    public var file_path: String? {
        get { return json["file_path"].string }
        set { json["file_path"].string = newValue }
    }

    public init(json: JSON = [:]) {
        self.json = json
    }
}
