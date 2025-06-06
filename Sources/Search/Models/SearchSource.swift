// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Source.
public struct SearchSource: Codable, JSONEncodable {
    /// IP address range of the source.
    public var source: String
    /// Source description.
    public var description: String?

    public init(source: String, description: String? = nil) {
        self.source = source
        self.description = description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case source
        case description
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.source, forKey: .source)
        try container.encodeIfPresent(self.description, forKey: .description)
    }
}

extension SearchSource: Equatable {
    public static func ==(lhs: SearchSource, rhs: SearchSource) -> Bool {
        lhs.source == rhs.source &&
            lhs.description == rhs.description
    }
}

extension SearchSource: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.source.hashValue)
        hasher.combine(self.description?.hashValue)
    }
}
