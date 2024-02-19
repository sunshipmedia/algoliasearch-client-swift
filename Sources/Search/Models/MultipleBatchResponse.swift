// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import AnyCodable
import Core
import Foundation

public struct MultipleBatchResponse: Codable, JSONEncodable, Hashable {
    /// TaskIDs per index.
    public var taskID: [String: Int64]
    /// Unique object (record) identifiers.
    public var objectIDs: [String]

    public init(taskID: [String: Int64], objectIDs: [String]) {
        self.taskID = taskID
        self.objectIDs = objectIDs
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case taskID
        case objectIDs
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.taskID, forKey: .taskID)
        try container.encode(self.objectIDs, forKey: .objectIDs)
    }
}
