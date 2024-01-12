// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct RecommendationsHits: Codable, JSONEncodable, Hashable {

  public var hits: [RecommendationsHit]
  /** Text to search for in an index. */
  public var query: String? = ""
  /** URL-encoded string of all search parameters. */
  public var params: String?

  public init(hits: [RecommendationsHit], query: String? = "", params: String? = nil) {
    self.hits = hits
    self.query = query
    self.params = params
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case hits
    case query
    case params
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(hits, forKey: .hits)
    try container.encodeIfPresent(query, forKey: .query)
    try container.encodeIfPresent(params, forKey: .params)
  }
}
