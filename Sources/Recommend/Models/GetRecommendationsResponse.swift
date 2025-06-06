// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct GetRecommendationsResponse: Codable, JSONEncodable {
    public var results: [RecommendationsResults]

    public init(results: [RecommendationsResults]) {
        self.results = results
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case results
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.results, forKey: .results)
    }
}

extension GetRecommendationsResponse: Equatable {
    public static func ==(lhs: GetRecommendationsResponse, rhs: GetRecommendationsResponse) -> Bool {
        lhs.results == rhs.results
    }
}

extension GetRecommendationsResponse: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.results.hashValue)
    }
}
