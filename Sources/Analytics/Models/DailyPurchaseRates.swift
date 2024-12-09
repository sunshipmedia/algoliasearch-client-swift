// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct DailyPurchaseRates: Codable, JSONEncodable {
    /// Purchase rate, calculated as number of tracked searches with at least one purchase event divided by the number
    /// of tracked searches. If null, Algolia didn't receive any search requests with `clickAnalytics` set to true.
    public var rate: Double?
    /// Number of tracked searches. Tracked searches are search requests where the `clickAnalytics` parameter is true.
    public var trackedSearchCount: Int
    /// Number of purchase events from this search.
    public var purchaseCount: Int
    /// Date in the format YYYY-MM-DD.
    public var date: String

    public init(rate: Double?, trackedSearchCount: Int, purchaseCount: Int, date: String) {
        self.rate = rate
        self.trackedSearchCount = trackedSearchCount
        self.purchaseCount = purchaseCount
        self.date = date
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rate
        case trackedSearchCount
        case purchaseCount
        case date
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.rate, forKey: .rate)
        try container.encode(self.trackedSearchCount, forKey: .trackedSearchCount)
        try container.encode(self.purchaseCount, forKey: .purchaseCount)
        try container.encode(self.date, forKey: .date)
    }
}

extension DailyPurchaseRates: Equatable {
    public static func ==(lhs: DailyPurchaseRates, rhs: DailyPurchaseRates) -> Bool {
        lhs.rate == rhs.rate &&
            lhs.trackedSearchCount == rhs.trackedSearchCount &&
            lhs.purchaseCount == rhs.purchaseCount &&
            lhs.date == rhs.date
    }
}

extension DailyPurchaseRates: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.rate.hashValue)
        hasher.combine(self.trackedSearchCount.hashValue)
        hasher.combine(self.purchaseCount.hashValue)
        hasher.combine(self.date.hashValue)
    }
}
