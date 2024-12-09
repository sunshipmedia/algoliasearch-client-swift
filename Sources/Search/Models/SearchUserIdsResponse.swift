// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// userIDs data.
public struct SearchUserIdsResponse: Codable, JSONEncodable {
    /// User objects that match the query.
    public var hits: [UserHit]
    /// Number of results (hits).
    public var nbHits: Int
    /// Page of search results to retrieve.
    public var page: Int
    /// Maximum number of hits per page.  Algolia uses `page` and `hitsPerPage` to control how search results are
    /// displayed
    /// ([paginated](https://www.algolia.com/doc/guides/building-search-ui/ui-and-ux-patterns/pagination/js/)).  -
    /// `hitsPerPage`: sets the number of search results (_hits_) displayed per page. - `page`: specifies the page
    /// number of the search results you want to retrieve. Page numbering starts at 0, so the first page is `page=0`,
    /// the second is `page=1`, and so on.  For example, to display 10 results per page starting from the third page,
    /// set `hitsPerPage` to 10 and `page` to 2.
    public var hitsPerPage: Int
    /// Date and time when the object was updated, in RFC 3339 format.
    public var updatedAt: String

    public init(hits: [UserHit], nbHits: Int, page: Int, hitsPerPage: Int, updatedAt: String) {
        self.hits = hits
        self.nbHits = nbHits
        self.page = page
        self.hitsPerPage = hitsPerPage
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hits
        case nbHits
        case page
        case hitsPerPage
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.hits, forKey: .hits)
        try container.encode(self.nbHits, forKey: .nbHits)
        try container.encode(self.page, forKey: .page)
        try container.encode(self.hitsPerPage, forKey: .hitsPerPage)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }
}

extension SearchUserIdsResponse: Equatable {
    public static func ==(lhs: SearchUserIdsResponse, rhs: SearchUserIdsResponse) -> Bool {
        lhs.hits == rhs.hits &&
            lhs.nbHits == rhs.nbHits &&
            lhs.page == rhs.page &&
            lhs.hitsPerPage == rhs.hitsPerPage &&
            lhs.updatedAt == rhs.updatedAt
    }
}

extension SearchUserIdsResponse: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.hits.hashValue)
        hasher.combine(self.nbHits.hashValue)
        hasher.combine(self.page.hashValue)
        hasher.combine(self.hitsPerPage.hashValue)
        hasher.combine(self.updatedAt.hashValue)
    }
}
