// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Credentials for authenticating with an API key.
public struct AuthAPIKeyPartial: Codable, JSONEncodable {
    /// API key. This field is `null` in the API response.
    public var key: String?

    public init(key: String? = nil) {
        self.key = key
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.key, forKey: .key)
    }
}

extension AuthAPIKeyPartial: Equatable {
    public static func ==(lhs: AuthAPIKeyPartial, rhs: AuthAPIKeyPartial) -> Bool {
        lhs.key == rhs.key
    }
}

extension AuthAPIKeyPartial: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.key?.hashValue)
    }
}
