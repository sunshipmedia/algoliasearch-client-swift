// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct ObjectData: Codable, JSONEncodable, Hashable {

  public var price: Price?
  /** The quantity of the purchased or added-to-cart item. The total value of a purchase is the sum of `quantity` multiplied with the `price` for each purchased item. */
  public var quantity: Int?
  public var discount: Discount?

  public init(price: Price? = nil, quantity: Int? = nil, discount: Discount? = nil) {
    self.price = price
    self.quantity = quantity
    self.discount = discount
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case price
    case quantity
    case discount
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encodeIfPresent(price, forKey: .price)
    try container.encodeIfPresent(quantity, forKey: .quantity)
    try container.encodeIfPresent(discount, forKey: .discount)
  }
}
