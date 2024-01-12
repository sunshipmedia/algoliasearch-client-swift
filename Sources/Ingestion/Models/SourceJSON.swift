// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct SourceJSON: Codable, JSONEncodable, Hashable {

  /** The URL of the file. */
  public var url: String
  /** The name of the column that contains the unique ID, used as `objectID` in Algolia. */
  public var uniqueIDColumn: String?
  public var method: MethodType?

  public init(url: String, uniqueIDColumn: String? = nil, method: MethodType? = nil) {
    self.url = url
    self.uniqueIDColumn = uniqueIDColumn
    self.method = method
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case url
    case uniqueIDColumn
    case method
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(url, forKey: .url)
    try container.encodeIfPresent(uniqueIDColumn, forKey: .uniqueIDColumn)
    try container.encodeIfPresent(method, forKey: .method)
  }
}
