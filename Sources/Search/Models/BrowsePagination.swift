// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct BrowsePagination: Codable, JSONEncodable {
    /// Page of search results to retrieve.
    public var page: Int?
    /// Number of results (hits).
    public var nbHits: Int?
    /// Number of pages of results.
    public var nbPages: Int?
    /// Number of hits per page.
    public var hitsPerPage: Int?

    public init(page: Int? = nil, nbHits: Int? = nil, nbPages: Int? = nil, hitsPerPage: Int? = nil) {
        self.page = page
        self.nbHits = nbHits
        self.nbPages = nbPages
        self.hitsPerPage = hitsPerPage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case page
        case nbHits
        case nbPages
        case hitsPerPage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.page, forKey: .page)
        try container.encodeIfPresent(self.nbHits, forKey: .nbHits)
        try container.encodeIfPresent(self.nbPages, forKey: .nbPages)
        try container.encodeIfPresent(self.hitsPerPage, forKey: .hitsPerPage)
    }
}

extension BrowsePagination: Equatable {
    public static func ==(lhs: BrowsePagination, rhs: BrowsePagination) -> Bool {
        lhs.page == rhs.page &&
            lhs.nbHits == rhs.nbHits &&
            lhs.nbPages == rhs.nbPages &&
            lhs.hitsPerPage == rhs.hitsPerPage
    }
}

extension BrowsePagination: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.page?.hashValue)
        hasher.combine(self.nbHits?.hashValue)
        hasher.combine(self.nbPages?.hashValue)
        hasher.combine(self.hitsPerPage?.hashValue)
    }
}
