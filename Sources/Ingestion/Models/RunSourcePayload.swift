// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct RunSourcePayload: Codable, JSONEncodable {
    /// List of index names to include in reidexing/update.
    public var indexToInclude: [String]?
    /// List of index names to exclude in reidexing/update.
    public var indexToExclude: [String]?
    /// List of entityID to update.
    public var entityIDs: [String]?
    public var entityType: EntityType?

    public init(
        indexToInclude: [String]? = nil,
        indexToExclude: [String]? = nil,
        entityIDs: [String]? = nil,
        entityType: EntityType? = nil
    ) {
        self.indexToInclude = indexToInclude
        self.indexToExclude = indexToExclude
        self.entityIDs = entityIDs
        self.entityType = entityType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case indexToInclude
        case indexToExclude
        case entityIDs
        case entityType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.indexToInclude, forKey: .indexToInclude)
        try container.encodeIfPresent(self.indexToExclude, forKey: .indexToExclude)
        try container.encodeIfPresent(self.entityIDs, forKey: .entityIDs)
        try container.encodeIfPresent(self.entityType, forKey: .entityType)
    }
}

extension RunSourcePayload: Equatable {
    public static func ==(lhs: RunSourcePayload, rhs: RunSourcePayload) -> Bool {
        lhs.indexToInclude == rhs.indexToInclude &&
            lhs.indexToExclude == rhs.indexToExclude &&
            lhs.entityIDs == rhs.entityIDs &&
            lhs.entityType == rhs.entityType
    }
}

extension RunSourcePayload: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.indexToInclude?.hashValue)
        hasher.combine(self.indexToExclude?.hashValue)
        hasher.combine(self.entityIDs?.hashValue)
        hasher.combine(self.entityType?.hashValue)
    }
}
