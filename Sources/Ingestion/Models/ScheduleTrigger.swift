// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Trigger information for scheduled tasks.
public struct ScheduleTrigger: Codable, JSONEncodable {
    public var type: ScheduleTriggerType
    /// Cron expression for the task's schedule.
    public var cron: String
    /// The last time the scheduled task ran in RFC 3339 format.
    public var lastRun: String?
    /// The next scheduled run of the task in RFC 3339 format.
    public var nextRun: String

    public init(type: ScheduleTriggerType, cron: String, lastRun: String? = nil, nextRun: String) {
        self.type = type
        self.cron = cron
        self.lastRun = lastRun
        self.nextRun = nextRun
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case cron
        case lastRun
        case nextRun
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.cron, forKey: .cron)
        try container.encodeIfPresent(self.lastRun, forKey: .lastRun)
        try container.encode(self.nextRun, forKey: .nextRun)
    }
}

extension ScheduleTrigger: Equatable {
    public static func ==(lhs: ScheduleTrigger, rhs: ScheduleTrigger) -> Bool {
        lhs.type == rhs.type &&
            lhs.cron == rhs.cron &&
            lhs.lastRun == rhs.lastRun &&
            lhs.nextRun == rhs.nextRun
    }
}

extension ScheduleTrigger: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.type.hashValue)
        hasher.combine(self.cron.hashValue)
        hasher.combine(self.lastRun?.hashValue)
        hasher.combine(self.nextRun.hashValue)
    }
}
