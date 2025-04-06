// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// API request body for updating a task.
public struct TaskUpdate: Codable, JSONEncodable {
    /// Universally unique identifier (UUID) of a destination resource.
    public var destinationID: String?
    /// Cron expression for the task's schedule.
    public var cron: String?
    public var input: TaskInput?
    /// Whether the task is enabled.
    public var enabled: Bool?
    public var subscriptionAction: ActionType?
    /// Maximum accepted percentage of failures for a task run to finish successfully.
    public var failureThreshold: Int?
    public var notifications: Notifications?
    public var policies: Policies?

    public init(
        destinationID: String? = nil,
        cron: String? = nil,
        input: TaskInput? = nil,
        enabled: Bool? = nil,
        subscriptionAction: ActionType? = nil,
        failureThreshold: Int? = nil,
        notifications: Notifications? = nil,
        policies: Policies? = nil
    ) {
        self.destinationID = destinationID
        self.cron = cron
        self.input = input
        self.enabled = enabled
        self.subscriptionAction = subscriptionAction
        self.failureThreshold = failureThreshold
        self.notifications = notifications
        self.policies = policies
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case destinationID
        case cron
        case input
        case enabled
        case subscriptionAction
        case failureThreshold
        case notifications
        case policies
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.destinationID, forKey: .destinationID)
        try container.encodeIfPresent(self.cron, forKey: .cron)
        try container.encodeIfPresent(self.input, forKey: .input)
        try container.encodeIfPresent(self.enabled, forKey: .enabled)
        try container.encodeIfPresent(self.subscriptionAction, forKey: .subscriptionAction)
        try container.encodeIfPresent(self.failureThreshold, forKey: .failureThreshold)
        try container.encodeIfPresent(self.notifications, forKey: .notifications)
        try container.encodeIfPresent(self.policies, forKey: .policies)
    }
}

extension TaskUpdate: Equatable {
    public static func ==(lhs: TaskUpdate, rhs: TaskUpdate) -> Bool {
        lhs.destinationID == rhs.destinationID &&
            lhs.cron == rhs.cron &&
            lhs.input == rhs.input &&
            lhs.enabled == rhs.enabled &&
            lhs.subscriptionAction == rhs.subscriptionAction &&
            lhs.failureThreshold == rhs.failureThreshold &&
            lhs.notifications == rhs.notifications &&
            lhs.policies == rhs.policies
    }
}

extension TaskUpdate: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.destinationID?.hashValue)
        hasher.combine(self.cron?.hashValue)
        hasher.combine(self.input?.hashValue)
        hasher.combine(self.enabled?.hashValue)
        hasher.combine(self.subscriptionAction?.hashValue)
        hasher.combine(self.failureThreshold?.hashValue)
        hasher.combine(self.notifications?.hashValue)
        hasher.combine(self.policies?.hashValue)
    }
}
