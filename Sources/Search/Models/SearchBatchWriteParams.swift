// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Batch parameters.
public struct SearchBatchWriteParams: Codable, JSONEncodable {
    public var requests: [SearchBatchRequest]

    public init(requests: [SearchBatchRequest]) {
        self.requests = requests
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case requests
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.requests, forKey: .requests)
    }
}

extension SearchBatchWriteParams: Equatable {
    public static func ==(lhs: SearchBatchWriteParams, rhs: SearchBatchWriteParams) -> Bool {
        lhs.requests == rhs.requests
    }
}

extension SearchBatchWriteParams: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.requests.hashValue)
    }
}
