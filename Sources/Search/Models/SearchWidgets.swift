// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Widgets returned from any rules that are applied to the current search.
public struct SearchWidgets: Codable, JSONEncodable {
    /// Banners defined in the Merchandising Studio for a given search.
    public var banners: [SearchBanner]?

    public init(banners: [SearchBanner]? = nil) {
        self.banners = banners
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case banners
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.banners, forKey: .banners)
    }
}

extension SearchWidgets: Equatable {
    public static func ==(lhs: SearchWidgets, rhs: SearchWidgets) -> Bool {
        lhs.banners == rhs.banners
    }
}

extension SearchWidgets: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.banners?.hashValue)
    }
}
