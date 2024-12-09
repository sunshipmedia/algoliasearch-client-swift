// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// A/B test filter effects resulting from configuration settings.
public struct FilterEffects: Codable, JSONEncodable {
    public var outliers: OutliersFilter?
    public var emptySearch: EmptySearchFilter?

    public init(outliers: OutliersFilter? = nil, emptySearch: EmptySearchFilter? = nil) {
        self.outliers = outliers
        self.emptySearch = emptySearch
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case outliers
        case emptySearch
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.outliers, forKey: .outliers)
        try container.encodeIfPresent(self.emptySearch, forKey: .emptySearch)
    }
}

extension FilterEffects: Equatable {
    public static func ==(lhs: FilterEffects, rhs: FilterEffects) -> Bool {
        lhs.outliers == rhs.outliers &&
            lhs.emptySearch == rhs.emptySearch
    }
}

extension FilterEffects: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.outliers?.hashValue)
        hasher.combine(self.emptySearch?.hashValue)
    }
}
