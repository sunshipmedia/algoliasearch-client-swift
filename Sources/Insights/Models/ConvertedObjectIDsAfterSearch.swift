// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

/// Use this event to track when users convert after a previous Algolia request. For example, a user clicks on an item in the search results to view the product detail page. Then, the user adds the item to their shopping cart.  If you&#39;re building your category pages with Algolia, you&#39;ll also use this event.
public struct ConvertedObjectIDsAfterSearch: Codable, JSONEncodable, Hashable {

  static let eventNameRule = StringRule(minLength: 1, maxLength: 64, pattern: "[\\x20-\\x7E]{1,64}")
  static let queryIDRule = StringRule(minLength: 32, maxLength: 32, pattern: "[0-9a-f]{32}")
  static let userTokenRule = StringRule(
    minLength: 1, maxLength: 129, pattern: "[a-zA-Z0-9_=/+-]{1,129}")
  /** Can contain up to 64 ASCII characters.   Consider naming events consistently—for example, by adopting Segment's [object-action](https://segment.com/academy/collecting-data/naming-conventions-for-clean-data/#the-object-action-framework) framework.  */
  public var eventName: String
  public var eventType: ConversionEvent
  /** Name of the Algolia index. */
  public var index: String
  /** List of object identifiers for items of an Algolia index. */
  public var objectIDs: [String]
  /** Unique identifier for a search query.  The query ID is required for events related to search or browse requests. If you add `clickAnalytics: true` as a search request parameter, the query ID is included in the API response.  */
  public var queryID: String
  /** Anonymous or pseudonymous user identifier.   > **Note**: Never include personally identifiable information in user tokens.  */
  public var userToken: String
  /** Time of the event in milliseconds in [Unix epoch time](https://wikipedia.org/wiki/Unix_time). By default, the Insights API uses the time it receives an event as its timestamp.  */
  public var timestamp: Int64?
  /** User token for authenticated users. */
  public var authenticatedUserToken: String?

  public init(
    eventName: String, eventType: ConversionEvent, index: String, objectIDs: [String],
    queryID: String, userToken: String, timestamp: Int64? = nil,
    authenticatedUserToken: String? = nil
  ) {
    self.eventName = eventName
    self.eventType = eventType
    self.index = index
    self.objectIDs = objectIDs
    self.queryID = queryID
    self.userToken = userToken
    self.timestamp = timestamp
    self.authenticatedUserToken = authenticatedUserToken
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case eventName
    case eventType
    case index
    case objectIDs
    case queryID
    case userToken
    case timestamp
    case authenticatedUserToken
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(eventName, forKey: .eventName)
    try container.encode(eventType, forKey: .eventType)
    try container.encode(index, forKey: .index)
    try container.encode(objectIDs, forKey: .objectIDs)
    try container.encode(queryID, forKey: .queryID)
    try container.encode(userToken, forKey: .userToken)
    try container.encodeIfPresent(timestamp, forKey: .timestamp)
    try container.encodeIfPresent(authenticatedUserToken, forKey: .authenticatedUserToken)
  }
}
