// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Words that should be considered optional when found in the query.  By default, records must match all words in the
/// search query to be included in the search results. Adding optional words can help to increase the number of search
/// results by running an additional search query that doesn't include the optional words. For example, if the search
/// query is \"action video\" and \"video\" is an optional word, the search engine runs two queries. One for \"action
/// video\" and one for \"action\". Records that match all words are ranked higher.  For a search query with 4 or more
/// words **and** all its words are optional, the number of matched words required for a record to be included in the
/// search results increases for every 1,000 records:  - If `optionalWords` has less than 10 words, the required number
/// of matched words increases by 1:   results 1 to 1,000 require 1 matched word, results 1,001 to 2000 need 2 matched
/// words. - If `optionalWords` has 10 or more words, the number of required matched words increases by the number of
/// optional words divided by 5 (rounded down).   For example, with 18 optional words: results 1 to 1,000 require 1
/// matched word, results 1,001 to 2000 need 4 matched words.  For more information, see [Optional words](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/empty-or-insufficient-results/#creating-a-list-of-optional-words).
public enum RecommendOptionalWords: Codable, JSONEncodable, AbstractEncodable {
    case string(String)
    case arrayOfString([String])

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .string(value):
            try container.encode(value)
        case let .arrayOfString(value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(String.self) {
            self = .string(value)
        } else if let value = try? container.decode([String].self) {
            self = .arrayOfString(value)
        } else {
            throw DecodingError.typeMismatch(
                Self.Type.self,
                .init(
                    codingPath: decoder.codingPath,
                    debugDescription: "Unable to decode instance of RecommendOptionalWords"
                )
            )
        }
    }

    public func GetActualInstance() -> Encodable {
        switch self {
        case let .string(value):
            value as String
        case let .arrayOfString(value):
            value as [String]
        }
    }
}

extension RecommendOptionalWords: Equatable {}
extension RecommendOptionalWords: Hashable {}
