// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// API response for a successful update of an authentication resource.
public struct AuthenticationUpdateResponse: Codable, JSONEncodable {
    /// Universally unique identifier (UUID) of an authentication resource.
    public var authenticationID: String
    /// Descriptive name for the resource.
    public var name: String
    /// Date of last update in RFC 3339 format.
    public var updatedAt: String

    public init(authenticationID: String, name: String, updatedAt: String) {
        self.authenticationID = authenticationID
        self.name = name
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case authenticationID
        case name
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.authenticationID, forKey: .authenticationID)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }
}

extension AuthenticationUpdateResponse: Equatable {
    public static func ==(lhs: AuthenticationUpdateResponse, rhs: AuthenticationUpdateResponse) -> Bool {
        lhs.authenticationID == rhs.authenticationID &&
            lhs.name == rhs.name &&
            lhs.updatedAt == rhs.updatedAt
    }
}

extension AuthenticationUpdateResponse: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.authenticationID.hashValue)
        hasher.combine(self.name.hashValue)
        hasher.combine(self.updatedAt.hashValue)
    }
}
