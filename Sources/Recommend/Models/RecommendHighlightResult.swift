// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public enum RecommendHighlightResult: Codable, JSONEncodable, AbstractEncodable {
    case recommendHighlightResultOption(RecommendHighlightResultOption)
    case dictionaryOfStringToRecommendHighlightResult([String: RecommendHighlightResult])
    case arrayOfRecommendHighlightResult([RecommendHighlightResult])

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .recommendHighlightResultOption(value):
            try container.encode(value)
        case let .dictionaryOfStringToRecommendHighlightResult(value):
            try container.encode(value)
        case let .arrayOfRecommendHighlightResult(value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(RecommendHighlightResultOption.self) {
            self = .recommendHighlightResultOption(value)
        } else if let value = try? container.decode([String: RecommendHighlightResult].self) {
            self = .dictionaryOfStringToRecommendHighlightResult(value)
        } else if let value = try? container.decode([RecommendHighlightResult].self) {
            self = .arrayOfRecommendHighlightResult(value)
        } else {
            throw DecodingError.typeMismatch(
                Self.Type.self,
                .init(
                    codingPath: decoder.codingPath,
                    debugDescription: "Unable to decode instance of RecommendHighlightResult"
                )
            )
        }
    }

    public func GetActualInstance() -> Encodable {
        switch self {
        case let .recommendHighlightResultOption(value):
            value as RecommendHighlightResultOption
        case let .dictionaryOfStringToRecommendHighlightResult(value):
            value as [String: RecommendHighlightResult]
        case let .arrayOfRecommendHighlightResult(value):
            value as [RecommendHighlightResult]
        }
    }
}

extension RecommendHighlightResult: Equatable {}
extension RecommendHighlightResult: Hashable {}
