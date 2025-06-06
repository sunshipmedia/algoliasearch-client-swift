// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Recommend request body.
public struct GetRecommendationsParams: Codable, JSONEncodable {
    /// Recommendation request with parameters depending on the requested model.
    public var requests: [RecommendationsRequest]

    public init(requests: [RecommendationsRequest]) {
        self.requests = requests
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case requests
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.requests, forKey: .requests)
    }
}

extension GetRecommendationsParams: Equatable {
    public static func ==(lhs: GetRecommendationsParams, rhs: GetRecommendationsParams) -> Bool {
        lhs.requests == rhs.requests
    }
}

extension GetRecommendationsParams: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.requests.hashValue)
    }
}
