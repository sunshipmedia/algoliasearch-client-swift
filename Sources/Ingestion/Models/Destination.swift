// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

/// Destinations are Algolia resources like indices or event streams.
public struct Destination: Codable, JSONEncodable {
    /// Universally unique identifier (UUID) of a destination resource.
    public var destinationID: String
    public var type: DestinationType
    /// Descriptive name for the resource.
    public var name: String
    /// Owner of the resource.
    public var owner: String?
    public var input: DestinationInput
    /// Date of creation in RFC 3339 format.
    public var createdAt: String
    /// Date of last update in RFC 3339 format.
    public var updatedAt: String
    /// Universally unique identifier (UUID) of an authentication resource.
    public var authenticationID: String?
    public var transformationIDs: [String]?

    public init(
        destinationID: String,
        type: DestinationType,
        name: String,
        owner: String? = nil,
        input: DestinationInput,
        createdAt: String,
        updatedAt: String,
        authenticationID: String? = nil,
        transformationIDs: [String]? = nil
    ) {
        self.destinationID = destinationID
        self.type = type
        self.name = name
        self.owner = owner
        self.input = input
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.authenticationID = authenticationID
        self.transformationIDs = transformationIDs
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case destinationID
        case type
        case name
        case owner
        case input
        case createdAt
        case updatedAt
        case authenticationID
        case transformationIDs
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.destinationID, forKey: .destinationID)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.owner, forKey: .owner)
        try container.encode(self.input, forKey: .input)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(self.authenticationID, forKey: .authenticationID)
        try container.encodeIfPresent(self.transformationIDs, forKey: .transformationIDs)
    }
}

extension Destination: Equatable {
    public static func ==(lhs: Destination, rhs: Destination) -> Bool {
        lhs.destinationID == rhs.destinationID &&
            lhs.type == rhs.type &&
            lhs.name == rhs.name &&
            lhs.owner == rhs.owner &&
            lhs.input == rhs.input &&
            lhs.createdAt == rhs.createdAt &&
            lhs.updatedAt == rhs.updatedAt &&
            lhs.authenticationID == rhs.authenticationID &&
            lhs.transformationIDs == rhs.transformationIDs
    }
}

extension Destination: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.destinationID.hashValue)
        hasher.combine(self.type.hashValue)
        hasher.combine(self.name.hashValue)
        hasher.combine(self.owner?.hashValue)
        hasher.combine(self.input.hashValue)
        hasher.combine(self.createdAt.hashValue)
        hasher.combine(self.updatedAt.hashValue)
        hasher.combine(self.authenticationID?.hashValue)
        hasher.combine(self.transformationIDs?.hashValue)
    }
}
