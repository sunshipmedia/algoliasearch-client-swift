// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct SearchForFacetValuesResponse: Codable, JSONEncodable {
    /// Matching facet values.
    public var facetHits: [FacetHits]
    /// Whether the facet count is exhaustive (true) or approximate (false). For more information, see [Why are my facet
    /// and hit counts not accurate](https://support.algolia.com/hc/en-us/articles/4406975248145-Why-are-my-facet-and-hit-counts-not-accurate-).
    public var exhaustiveFacetsCount: Bool
    /// Time the server took to process the request, in milliseconds.
    public var processingTimeMS: Int?

    public init(facetHits: [FacetHits], exhaustiveFacetsCount: Bool, processingTimeMS: Int? = nil) {
        self.facetHits = facetHits
        self.exhaustiveFacetsCount = exhaustiveFacetsCount
        self.processingTimeMS = processingTimeMS
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case facetHits
        case exhaustiveFacetsCount
        case processingTimeMS
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.facetHits, forKey: .facetHits)
        try container.encode(self.exhaustiveFacetsCount, forKey: .exhaustiveFacetsCount)
        try container.encodeIfPresent(self.processingTimeMS, forKey: .processingTimeMS)
    }
}

extension SearchForFacetValuesResponse: Equatable {
    public static func ==(lhs: SearchForFacetValuesResponse, rhs: SearchForFacetValuesResponse) -> Bool {
        lhs.facetHits == rhs.facetHits &&
            lhs.exhaustiveFacetsCount == rhs.exhaustiveFacetsCount &&
            lhs.processingTimeMS == rhs.processingTimeMS
    }
}

extension SearchForFacetValuesResponse: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.facetHits.hashValue)
        hasher.combine(self.exhaustiveFacetsCount.hashValue)
        hasher.combine(self.processingTimeMS?.hashValue)
    }
}
