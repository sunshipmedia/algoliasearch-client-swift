// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct DeleteUserProfileResponse: Codable, JSONEncodable {
    /// Unique pseudonymous or anonymous user identifier.  This helps with analytics and click and conversion events.
    /// For more information, see [user token](https://www.algolia.com/doc/guides/sending-events/concepts/usertoken/).
    public var userToken: String
    /// Date and time when the user profile can be safely considered to be deleted. Any events received after the
    /// `deletedUntil` date start a new user profile.
    public var deletedUntil: String

    public init(userToken: String, deletedUntil: String) {
        self.userToken = userToken
        self.deletedUntil = deletedUntil
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userToken
        case deletedUntil
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.userToken, forKey: .userToken)
        try container.encode(self.deletedUntil, forKey: .deletedUntil)
    }
}

extension DeleteUserProfileResponse: Equatable {
    public static func ==(lhs: DeleteUserProfileResponse, rhs: DeleteUserProfileResponse) -> Bool {
        lhs.userToken == rhs.userToken &&
            lhs.deletedUntil == rhs.deletedUntil
    }
}

extension DeleteUserProfileResponse: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.userToken.hashValue)
        hasher.combine(self.deletedUntil.hashValue)
    }
}
