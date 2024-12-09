// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

@available(*, deprecated, message: "This schema is deprecated.")
public enum AttributeToUpdate: Codable, JSONEncodable, AbstractEncodable {
    case string(String)
    case builtInOperation(BuiltInOperation)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .string(value):
            try container.encode(value)
        case let .builtInOperation(value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(String.self) {
            self = .string(value)
        } else if let value = try? container.decode(BuiltInOperation.self) {
            self = .builtInOperation(value)
        } else {
            throw DecodingError.typeMismatch(
                Self.Type.self,
                .init(
                    codingPath: decoder.codingPath,
                    debugDescription: "Unable to decode instance of AttributeToUpdate"
                )
            )
        }
    }

    public func GetActualInstance() -> Encodable {
        switch self {
        case let .string(value):
            value as String
        case let .builtInOperation(value):
            value as BuiltInOperation
        }
    }
}

extension AttributeToUpdate: Equatable {}
extension AttributeToUpdate: Hashable {}
