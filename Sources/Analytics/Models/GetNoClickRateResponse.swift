// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import AnyCodable
import Core
import Foundation

public struct GetNoClickRateResponse: Codable, JSONEncodable, Hashable {
    static let rateRule = NumericRule<Double>(
        minimum: 0,
        exclusiveMinimum: false,
        maximum: 1,
        exclusiveMaximum: false,
        multipleOf: nil
    )
    /// [Click-through rate
    /// (CTR)](https://www.algolia.com/doc/guides/search-analytics/concepts/metrics/#click-through-rate).
    public var rate: Double
    /// Number of click events.
    public var count: Int
    /// Number of click events.
    public var noClickCount: Int
    /// Overall count of searches without clicks plus a daily breakdown.
    public var dates: [NoClickRateEvent]

    public init(rate: Double, count: Int, noClickCount: Int, dates: [NoClickRateEvent]) {
        self.rate = rate
        self.count = count
        self.noClickCount = noClickCount
        self.dates = dates
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rate
        case count
        case noClickCount
        case dates
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.rate, forKey: .rate)
        try container.encode(self.count, forKey: .count)
        try container.encode(self.noClickCount, forKey: .noClickCount)
        try container.encode(self.dates, forKey: .dates)
    }
}
