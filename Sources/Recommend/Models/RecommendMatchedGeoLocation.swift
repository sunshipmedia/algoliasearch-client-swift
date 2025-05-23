// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct RecommendMatchedGeoLocation: Codable, JSONEncodable {
    /// Latitude of the matched location.
    public var lat: Double?
    /// Longitude of the matched location.
    public var lng: Double?
    /// Distance between the matched location and the search location (in meters).
    public var distance: Int?

    public init(lat: Double? = nil, lng: Double? = nil, distance: Int? = nil) {
        self.lat = lat
        self.lng = lng
        self.distance = distance
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case lat
        case lng
        case distance
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.lat, forKey: .lat)
        try container.encodeIfPresent(self.lng, forKey: .lng)
        try container.encodeIfPresent(self.distance, forKey: .distance)
    }
}

extension RecommendMatchedGeoLocation: Equatable {
    public static func ==(lhs: RecommendMatchedGeoLocation, rhs: RecommendMatchedGeoLocation) -> Bool {
        lhs.lat == rhs.lat &&
            lhs.lng == rhs.lng &&
            lhs.distance == rhs.distance
    }
}

extension RecommendMatchedGeoLocation: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.lat?.hashValue)
        hasher.combine(self.lng?.hashValue)
        hasher.combine(self.distance?.hashValue)
    }
}
