// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Range object with lower and upper values in meters to define custom ranges.
public struct SearchRange: Codable, JSONEncodable {
    /// Lower boundary of a range in meters. The Geo ranking criterion considers all records within the range to be
    /// equal.
    public var from: Int?
    /// Upper boundary of a range in meters. The Geo ranking criterion considers all records within the range to be
    /// equal.
    public var value: Int?

    public init(from: Int? = nil, value: Int? = nil) {
        self.from = from
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case from
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.from, forKey: .from)
        try container.encodeIfPresent(self.value, forKey: .value)
    }
}

extension SearchRange: Equatable {
    public static func ==(lhs: SearchRange, rhs: SearchRange) -> Bool {
        lhs.from == rhs.from &&
            lhs.value == rhs.value
    }
}

extension SearchRange: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.from?.hashValue)
        hasher.combine(self.value?.hashValue)
    }
}
