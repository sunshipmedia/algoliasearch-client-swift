// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import AnyCodable
import Core
import Foundation

/// The payload when creating an authentication.
public struct AuthenticationCreate: Codable, JSONEncodable, Hashable {
    public var type: AuthenticationType
    /// An human readable name describing the object.
    public var name: String
    public var platform: Platform?
    public var input: AuthInput

    public init(type: AuthenticationType, name: String, platform: Platform? = nil, input: AuthInput) {
        self.type = type
        self.name = name
        self.platform = platform
        self.input = input
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case name
        case platform
        case input
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.platform, forKey: .platform)
        try container.encode(self.input, forKey: .input)
    }
}
