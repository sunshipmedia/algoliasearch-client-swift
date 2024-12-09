// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct RecommendPersonalization: Codable, JSONEncodable {
    /// The score of the filters.
    public var filtersScore: Int?
    /// The score of the ranking.
    public var rankingScore: Int?
    /// The score of the event.
    public var score: Int?

    public init(filtersScore: Int? = nil, rankingScore: Int? = nil, score: Int? = nil) {
        self.filtersScore = filtersScore
        self.rankingScore = rankingScore
        self.score = score
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case filtersScore
        case rankingScore
        case score
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.filtersScore, forKey: .filtersScore)
        try container.encodeIfPresent(self.rankingScore, forKey: .rankingScore)
        try container.encodeIfPresent(self.score, forKey: .score)
    }
}

extension RecommendPersonalization: Equatable {
    public static func ==(lhs: RecommendPersonalization, rhs: RecommendPersonalization) -> Bool {
        lhs.filtersScore == rhs.filtersScore &&
            lhs.rankingScore == rhs.rankingScore &&
            lhs.score == rhs.score
    }
}

extension RecommendPersonalization: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.filtersScore?.hashValue)
        hasher.combine(self.rankingScore?.hashValue)
        hasher.combine(self.score?.hashValue)
    }
}
