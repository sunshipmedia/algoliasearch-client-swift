// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct IncidentsResponse: Codable, JSONEncodable, Hashable {

  public var incidents: [String: [IncidentsInner]]?

  public init(incidents: [String: [IncidentsInner]]? = nil) {
    self.incidents = incidents
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case incidents
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encodeIfPresent(incidents, forKey: .incidents)
  }
}
