// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct SearchSynonymsParams: Codable, JSONEncodable {
    /// Search query.
    public var query: String?
    public var type: SynonymType?
    /// Page of search results to retrieve.
    public var page: Int?
    /// Number of hits per page.
    public var hitsPerPage: Int?

    public init(query: String? = nil, type: SynonymType? = nil, page: Int? = nil, hitsPerPage: Int? = nil) {
        self.query = query
        self.type = type
        self.page = page
        self.hitsPerPage = hitsPerPage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case query
        case type
        case page
        case hitsPerPage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.query, forKey: .query)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.page, forKey: .page)
        try container.encodeIfPresent(self.hitsPerPage, forKey: .hitsPerPage)
    }
}

extension SearchSynonymsParams: Equatable {
    public static func ==(lhs: SearchSynonymsParams, rhs: SearchSynonymsParams) -> Bool {
        lhs.query == rhs.query &&
            lhs.type == rhs.type &&
            lhs.page == rhs.page &&
            lhs.hitsPerPage == rhs.hitsPerPage
    }
}

extension SearchSynonymsParams: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.query?.hashValue)
        hasher.combine(self.type?.hashValue)
        hasher.combine(self.page?.hashValue)
        hasher.combine(self.hitsPerPage?.hashValue)
    }
}
