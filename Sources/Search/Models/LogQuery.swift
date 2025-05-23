// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct LogQuery: Codable, JSONEncodable {
    /// Index targeted by the query.
    public var indexName: String?
    /// A user identifier.
    public var userToken: String?
    /// Unique query identifier.
    public var queryId: String?

    public init(indexName: String? = nil, userToken: String? = nil, queryId: String? = nil) {
        self.indexName = indexName
        self.userToken = userToken
        self.queryId = queryId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case indexName = "index_name"
        case userToken = "user_token"
        case queryId = "query_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.indexName, forKey: .indexName)
        try container.encodeIfPresent(self.userToken, forKey: .userToken)
        try container.encodeIfPresent(self.queryId, forKey: .queryId)
    }
}

extension LogQuery: Equatable {
    public static func ==(lhs: LogQuery, rhs: LogQuery) -> Bool {
        lhs.indexName == rhs.indexName &&
            lhs.userToken == rhs.userToken &&
            lhs.queryId == rhs.queryId
    }
}

extension LogQuery: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.indexName?.hashValue)
        hasher.combine(self.userToken?.hashValue)
        hasher.combine(self.queryId?.hashValue)
    }
}
