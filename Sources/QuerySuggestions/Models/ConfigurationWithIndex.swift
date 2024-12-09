// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Query Suggestions configuration.
public struct ConfigurationWithIndex: Codable, JSONEncodable {
    /// Algolia indices from which to get the popular searches for query suggestions.
    public var sourceIndices: [SourceIndex]
    public var languages: QuerySuggestionsLanguages?
    public var exclude: [String]?
    /// Whether to turn on personalized query suggestions.
    public var enablePersonalization: Bool?
    /// Whether to include suggestions with special characters.
    public var allowSpecialCharacters: Bool?
    /// Name of the Query Suggestions index (case-sensitive).
    public var indexName: String

    public init(
        sourceIndices: [SourceIndex],
        languages: QuerySuggestionsLanguages? = nil,
        exclude: [String]? = nil,
        enablePersonalization: Bool? = nil,
        allowSpecialCharacters: Bool? = nil,
        indexName: String
    ) {
        self.sourceIndices = sourceIndices
        self.languages = languages
        self.exclude = exclude
        self.enablePersonalization = enablePersonalization
        self.allowSpecialCharacters = allowSpecialCharacters
        self.indexName = indexName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sourceIndices
        case languages
        case exclude
        case enablePersonalization
        case allowSpecialCharacters
        case indexName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.sourceIndices, forKey: .sourceIndices)
        try container.encodeIfPresent(self.languages, forKey: .languages)
        try container.encodeIfPresent(self.exclude, forKey: .exclude)
        try container.encodeIfPresent(self.enablePersonalization, forKey: .enablePersonalization)
        try container.encodeIfPresent(self.allowSpecialCharacters, forKey: .allowSpecialCharacters)
        try container.encode(self.indexName, forKey: .indexName)
    }
}

extension ConfigurationWithIndex: Equatable {
    public static func ==(lhs: ConfigurationWithIndex, rhs: ConfigurationWithIndex) -> Bool {
        lhs.sourceIndices == rhs.sourceIndices &&
            lhs.languages == rhs.languages &&
            lhs.exclude == rhs.exclude &&
            lhs.enablePersonalization == rhs.enablePersonalization &&
            lhs.allowSpecialCharacters == rhs.allowSpecialCharacters &&
            lhs.indexName == rhs.indexName
    }
}

extension ConfigurationWithIndex: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.sourceIndices.hashValue)
        hasher.combine(self.languages?.hashValue)
        hasher.combine(self.exclude?.hashValue)
        hasher.combine(self.enablePersonalization?.hashValue)
        hasher.combine(self.allowSpecialCharacters?.hashValue)
        hasher.combine(self.indexName.hashValue)
    }
}
