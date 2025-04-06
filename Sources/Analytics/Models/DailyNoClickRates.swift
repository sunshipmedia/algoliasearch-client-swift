// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct DailyNoClickRates: Codable, JSONEncodable {
    /// No click rate: calculated as the number of tracked searches without clicks divided by the number of tracked
    /// searches.
    public var rate: Double
    /// Number of tracked searches. Tracked searches are search requests where the `clickAnalytics` parameter is true.
    public var count: Int
    /// Number of times this search was returned as a result without any click.
    public var noClickCount: Int
    /// Date in the format YYYY-MM-DD.
    public var date: String

    public init(rate: Double, count: Int, noClickCount: Int, date: String) {
        self.rate = rate
        self.count = count
        self.noClickCount = noClickCount
        self.date = date
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rate
        case count
        case noClickCount
        case date
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.rate, forKey: .rate)
        try container.encode(self.count, forKey: .count)
        try container.encode(self.noClickCount, forKey: .noClickCount)
        try container.encode(self.date, forKey: .date)
    }
}

extension DailyNoClickRates: Equatable {
    public static func ==(lhs: DailyNoClickRates, rhs: DailyNoClickRates) -> Bool {
        lhs.rate == rhs.rate &&
            lhs.count == rhs.count &&
            lhs.noClickCount == rhs.noClickCount &&
            lhs.date == rhs.date
    }
}

extension DailyNoClickRates: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.rate.hashValue)
        hasher.combine(self.count.hashValue)
        hasher.combine(self.noClickCount.hashValue)
        hasher.combine(self.date.hashValue)
    }
}
