// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public enum SearchQuery: Codable, JSONEncodable, AbstractEncodable {
    case searchForFacets(SearchForFacets)
    case searchForHits(SearchForHits)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .searchForFacets(value):
            try container.encode(value)
        case let .searchForHits(value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(SearchForFacets.self) {
            self = .searchForFacets(value)
        } else if let value = try? container.decode(SearchForHits.self) {
            self = .searchForHits(value)
        } else {
            throw DecodingError.typeMismatch(
                Self.Type.self,
                .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of SearchQuery")
            )
        }
    }

    public func GetActualInstance() -> Encodable {
        switch self {
        case let .searchForFacets(value):
            value as SearchForFacets
        case let .searchForHits(value):
            value as SearchForHits
        }
    }
}

extension SearchQuery: Equatable {}
extension SearchQuery: Hashable {}
