// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct TopSearchesResponseWithRevenueAnalytics: Codable, JSONEncodable {
    /// Most popular searches, including their click and revenue metrics.
    public var searches: [TopSearchWithRevenueAnalytics]

    public init(searches: [TopSearchWithRevenueAnalytics]) {
        self.searches = searches
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case searches
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.searches, forKey: .searches)
    }
}

extension TopSearchesResponseWithRevenueAnalytics: Equatable {
    public static func ==(
        lhs: TopSearchesResponseWithRevenueAnalytics,
        rhs: TopSearchesResponseWithRevenueAnalytics
    ) -> Bool {
        lhs.searches == rhs.searches
    }
}

extension TopSearchesResponseWithRevenueAnalytics: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.searches.hashValue)
    }
}
