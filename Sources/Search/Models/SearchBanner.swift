// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Banner with image and link to redirect users.
public struct SearchBanner: Codable, JSONEncodable {
    public var image: SearchBannerImage?
    public var link: SearchBannerLink?

    public init(image: SearchBannerImage? = nil, link: SearchBannerLink? = nil) {
        self.image = image
        self.link = link
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case image
        case link
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.image, forKey: .image)
        try container.encodeIfPresent(self.link, forKey: .link)
    }
}

extension SearchBanner: Equatable {
    public static func ==(lhs: SearchBanner, rhs: SearchBanner) -> Bool {
        lhs.image == rhs.image &&
            lhs.link == rhs.link
    }
}

extension SearchBanner: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.image?.hashValue)
        hasher.combine(self.link?.hashValue)
    }
}
