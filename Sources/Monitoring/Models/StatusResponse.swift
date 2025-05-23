// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct StatusResponse: Codable, JSONEncodable {
    public var status: [String: MonitoringStatus]?

    public init(status: [String: MonitoringStatus]? = nil) {
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.status, forKey: .status)
    }
}

extension StatusResponse: Equatable {
    public static func ==(lhs: StatusResponse, rhs: StatusResponse) -> Bool {
        lhs.status == rhs.status
    }
}

extension StatusResponse: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.status?.hashValue)
    }
}
