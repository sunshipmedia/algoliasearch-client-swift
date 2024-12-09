// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct MonitoringForbidden: Codable, JSONEncodable {
    public var reason: String?

    public init(reason: String? = nil) {
        self.reason = reason
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case reason
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.reason, forKey: .reason)
    }
}

extension MonitoringForbidden: Equatable {
    public static func ==(lhs: MonitoringForbidden, rhs: MonitoringForbidden) -> Bool {
        lhs.reason == rhs.reason
    }
}

extension MonitoringForbidden: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.reason?.hashValue)
    }
}
