// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

/// Applies search parameters from [a restricted set of options](https://www.algolia.com/doc/api-reference/api-methods/add-ab-test/#method-param-customsearchparameters). Only use this parameter if the two variants use the same index.
public struct CustomSearchParams: Codable, JSONEncodable, Hashable {

  public var customSearchParameters: AnyCodable

  public init(customSearchParameters: AnyCodable) {
    self.customSearchParameters = customSearchParameters
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case customSearchParameters
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(customSearchParameters, forKey: .customSearchParameters)
  }
}
