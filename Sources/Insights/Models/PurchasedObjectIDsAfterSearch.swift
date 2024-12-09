// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Use this event to track when users make a purchase after a previous Algolia request. If you're building your
/// category pages with Algolia, you'll also use this event.
public struct PurchasedObjectIDsAfterSearch: Codable, JSONEncodable {
    /// Event name, up to 64 ASCII characters.  Consider naming events consistently—for example, by adopting Segment's [object-action](https://segment.com/academy/collecting-data/naming-conventions-for-clean-data/#the-object-action-framework)
    /// framework.
    public var eventName: String
    public var eventType: ConversionEvent
    public var eventSubtype: PurchaseEvent
    /// Index name (case-sensitive) to which the event's items belong.
    public var index: String
    /// Object IDs of the records that are part of the event.
    public var objectIDs: [String]
    /// Anonymous or pseudonymous user identifier.  Don't use personally identifiable information in user tokens. For
    /// more information, see [User token](https://www.algolia.com/doc/guides/sending-events/concepts/usertoken/).
    public var userToken: String
    /// Identifier for authenticated users.  When the user signs in, you can get an identifier from your system and send
    /// it as `authenticatedUserToken`. This lets you keep using the `userToken` from before the user signed in, while
    /// providing a reliable way to identify users across sessions. Don't use personally identifiable information in
    /// user tokens. For more information, see [User
    /// token](https://www.algolia.com/doc/guides/sending-events/concepts/usertoken/).
    public var authenticatedUserToken: String?
    /// Three-letter [currency code](https://www.iso.org/iso-4217-currency-codes.html).
    public var currency: String?
    /// Extra information about the records involved in a purchase or add-to-cart events.  If provided, it must be the
    /// same length as `objectIDs`.
    public var objectData: [ObjectDataAfterSearch]
    /// Timestamp of the event, measured in milliseconds since the Unix epoch. By default, the Insights API uses the
    /// time it receives an event as its timestamp.
    public var timestamp: Int64?
    public var value: InsightsValue?

    public init(
        eventName: String,
        eventType: ConversionEvent,
        eventSubtype: PurchaseEvent,
        index: String,
        objectIDs: [String],
        userToken: String,
        authenticatedUserToken: String? = nil,
        currency: String? = nil,
        objectData: [ObjectDataAfterSearch],
        timestamp: Int64? = nil,
        value: InsightsValue? = nil
    ) {
        self.eventName = eventName
        self.eventType = eventType
        self.eventSubtype = eventSubtype
        self.index = index
        self.objectIDs = objectIDs
        self.userToken = userToken
        self.authenticatedUserToken = authenticatedUserToken
        self.currency = currency
        self.objectData = objectData
        self.timestamp = timestamp
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventName
        case eventType
        case eventSubtype
        case index
        case objectIDs
        case userToken
        case authenticatedUserToken
        case currency
        case objectData
        case timestamp
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.eventName, forKey: .eventName)
        try container.encode(self.eventType, forKey: .eventType)
        try container.encode(self.eventSubtype, forKey: .eventSubtype)
        try container.encode(self.index, forKey: .index)
        try container.encode(self.objectIDs, forKey: .objectIDs)
        try container.encode(self.userToken, forKey: .userToken)
        try container.encodeIfPresent(self.authenticatedUserToken, forKey: .authenticatedUserToken)
        try container.encodeIfPresent(self.currency, forKey: .currency)
        try container.encode(self.objectData, forKey: .objectData)
        try container.encodeIfPresent(self.timestamp, forKey: .timestamp)
        try container.encodeIfPresent(self.value, forKey: .value)
    }
}

extension PurchasedObjectIDsAfterSearch: Equatable {
    public static func ==(lhs: PurchasedObjectIDsAfterSearch, rhs: PurchasedObjectIDsAfterSearch) -> Bool {
        lhs.eventName == rhs.eventName &&
            lhs.eventType == rhs.eventType &&
            lhs.eventSubtype == rhs.eventSubtype &&
            lhs.index == rhs.index &&
            lhs.objectIDs == rhs.objectIDs &&
            lhs.userToken == rhs.userToken &&
            lhs.authenticatedUserToken == rhs.authenticatedUserToken &&
            lhs.currency == rhs.currency &&
            lhs.objectData == rhs.objectData &&
            lhs.timestamp == rhs.timestamp &&
            lhs.value == rhs.value
    }
}

extension PurchasedObjectIDsAfterSearch: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.eventName.hashValue)
        hasher.combine(self.eventType.hashValue)
        hasher.combine(self.eventSubtype.hashValue)
        hasher.combine(self.index.hashValue)
        hasher.combine(self.objectIDs.hashValue)
        hasher.combine(self.userToken.hashValue)
        hasher.combine(self.authenticatedUserToken?.hashValue)
        hasher.combine(self.currency?.hashValue)
        hasher.combine(self.objectData.hashValue)
        hasher.combine(self.timestamp?.hashValue)
        hasher.combine(self.value?.hashValue)
    }
}
