// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Snippets that show the context around a matching search query.
public struct RecommendSnippetResultOption: Codable, JSONEncodable {
    /// Highlighted attribute value, including HTML tags.
    public var value: String
    public var matchLevel: RecommendMatchLevel

    public init(value: String, matchLevel: RecommendMatchLevel) {
        self.value = value
        self.matchLevel = matchLevel
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case value
        case matchLevel
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.value, forKey: .value)
        try container.encode(self.matchLevel, forKey: .matchLevel)
    }
}

extension RecommendSnippetResultOption: Equatable {
    public static func ==(lhs: RecommendSnippetResultOption, rhs: RecommendSnippetResultOption) -> Bool {
        lhs.value == rhs.value &&
            lhs.matchLevel == rhs.matchLevel
    }
}

extension RecommendSnippetResultOption: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.value.hashValue)
        hasher.combine(self.matchLevel.hashValue)
    }
}
