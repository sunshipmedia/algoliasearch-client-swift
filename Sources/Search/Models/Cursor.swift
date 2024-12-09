// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct Cursor: Codable, JSONEncodable {
    /// Cursor to get the next page of the response.  The parameter must match the value returned in the response of a
    /// previous request. The last page of the response does not return a `cursor` attribute.
    public var cursor: String?

    public init(cursor: String? = nil) {
        self.cursor = cursor
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cursor
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.cursor, forKey: .cursor)
    }
}

extension Cursor: Equatable {
    public static func ==(lhs: Cursor, rhs: Cursor) -> Bool {
        lhs.cursor == rhs.cursor
    }
}

extension Cursor: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.cursor?.hashValue)
    }
}
