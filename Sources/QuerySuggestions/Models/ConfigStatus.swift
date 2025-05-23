// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct ConfigStatus: Codable, JSONEncodable {
    /// Name of the Query Suggestions index (case-sensitive).
    public var indexName: String?
    /// Whether the creation or update of the Query Suggestions index is in progress.
    public var isRunning: Bool?
    /// Date and time when the Query Suggestions index was last built, in RFC 3339 format.
    public var lastBuiltAt: String?
    /// Date and time when the Query Suggestions index was last updated successfully.
    public var lastSuccessfulBuiltAt: String?
    /// Duration of the last successful build in seconds.
    public var lastSuccessfulBuildDuration: String?

    public init(
        indexName: String? = nil,
        isRunning: Bool? = nil,
        lastBuiltAt: String? = nil,
        lastSuccessfulBuiltAt: String? = nil,
        lastSuccessfulBuildDuration: String? = nil
    ) {
        self.indexName = indexName
        self.isRunning = isRunning
        self.lastBuiltAt = lastBuiltAt
        self.lastSuccessfulBuiltAt = lastSuccessfulBuiltAt
        self.lastSuccessfulBuildDuration = lastSuccessfulBuildDuration
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case indexName
        case isRunning
        case lastBuiltAt
        case lastSuccessfulBuiltAt
        case lastSuccessfulBuildDuration
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.indexName, forKey: .indexName)
        try container.encodeIfPresent(self.isRunning, forKey: .isRunning)
        try container.encodeIfPresent(self.lastBuiltAt, forKey: .lastBuiltAt)
        try container.encodeIfPresent(self.lastSuccessfulBuiltAt, forKey: .lastSuccessfulBuiltAt)
        try container.encodeIfPresent(self.lastSuccessfulBuildDuration, forKey: .lastSuccessfulBuildDuration)
    }
}

extension ConfigStatus: Equatable {
    public static func ==(lhs: ConfigStatus, rhs: ConfigStatus) -> Bool {
        lhs.indexName == rhs.indexName &&
            lhs.isRunning == rhs.isRunning &&
            lhs.lastBuiltAt == rhs.lastBuiltAt &&
            lhs.lastSuccessfulBuiltAt == rhs.lastSuccessfulBuiltAt &&
            lhs.lastSuccessfulBuildDuration == rhs.lastSuccessfulBuildDuration
    }
}

extension ConfigStatus: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.indexName?.hashValue)
        hasher.combine(self.isRunning?.hashValue)
        hasher.combine(self.lastBuiltAt?.hashValue)
        hasher.combine(self.lastSuccessfulBuiltAt?.hashValue)
        hasher.combine(self.lastSuccessfulBuildDuration?.hashValue)
    }
}
