// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Response and creation timestamp.
public struct CreatedAtResponse: Codable, JSONEncodable {
    /// Date and time when the object was created, in RFC 3339 format.
    public var createdAt: String

    public init(createdAt: String) {
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.createdAt, forKey: .createdAt)
    }
}

extension CreatedAtResponse: Equatable {
    public static func ==(lhs: CreatedAtResponse, rhs: CreatedAtResponse) -> Bool {
        lhs.createdAt == rhs.createdAt
    }
}

extension CreatedAtResponse: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.createdAt.hashValue)
    }
}
