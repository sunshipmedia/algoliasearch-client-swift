// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

open class QuerySuggestionsClient {
    private var configuration: QuerySuggestionsClientConfiguration
    private var transporter: Transporter

    var appID: String {
        self.configuration.appID
    }

    public init(configuration: QuerySuggestionsClientConfiguration, transporter: Transporter) {
        self.configuration = configuration
        self.transporter = transporter
    }

    public convenience init(configuration: QuerySuggestionsClientConfiguration) {
        self.init(configuration: configuration, transporter: Transporter(configuration: configuration))
    }

    public convenience init(appID: String, apiKey: String, region: Region) throws {
        try self.init(configuration: QuerySuggestionsClientConfiguration(appID: appID, apiKey: apiKey, region: region))
    }

    open func setClientApiKey(apiKey: String) {
        self.configuration.apiKey = apiKey
        self.transporter.setClientApiKey(apiKey: apiKey)
    }

    /// - parameter configurationWithIndex: (body)
    /// - returns: BaseResponse
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func createConfig(
        configurationWithIndex: ConfigurationWithIndex,
        requestOptions: RequestOptions? = nil
    ) async throws -> BaseResponse {
        let response: Response<BaseResponse> = try await createConfigWithHTTPInfo(
            configurationWithIndex: configurationWithIndex,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // Creates a new Query Suggestions configuration.  You can have up to 100 configurations per Algolia application.
    // Required API Key ACLs:
    //  - editSettings
    //
    // - parameter configurationWithIndex: (body)
    // - returns: RequestBuilder<BaseResponse>

    open func createConfigWithHTTPInfo(
        configurationWithIndex: ConfigurationWithIndex,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<BaseResponse> {
        let resourcePath = "/1/configs"
        let body = configurationWithIndex
        let queryParameters: [String: Any?]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "POST",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryParameters: queryParameters) + userRequestOptions
        )
    }

    /// - parameter path: (path) Path of the endpoint, anything after \"/1\" must be specified.
    /// - parameter parameters: (query) Query parameters to apply to the current query. (optional)
    /// - returns: AnyCodable
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func customDelete(
        path: String,
        parameters: [String: AnyCodable]? = nil,
        requestOptions: RequestOptions? = nil
    ) async throws -> AnyCodable {
        let response: Response<AnyCodable> = try await customDeleteWithHTTPInfo(
            path: path,
            parameters: parameters,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // This method allow you to send requests to the Algolia REST API.
    //
    //
    // - parameter path: (path) Path of the endpoint, anything after \"/1\" must be specified.
    //
    // - parameter parameters: (query) Query parameters to apply to the current query. (optional)
    // - returns: RequestBuilder<AnyCodable>

    open func customDeleteWithHTTPInfo(
        path: String,
        parameters: [String: AnyCodable]? = nil,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<AnyCodable> {
        guard !path.isEmpty else {
            throw AlgoliaError.invalidArgument("path", "customDelete")
        }

        var resourcePath = "/{path}"
        let pathPreEscape = "\(APIHelper.mapValueToPathItem(path))"
        resourcePath = resourcePath.replacingOccurrences(
            of: "{path}",
            with: pathPreEscape,
            options: .literal,
            range: nil
        )
        let body: AnyCodable? = nil
        let queryParameters: [String: AnyCodable]? = parameters

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "DELETE",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryParameters: queryParameters) + userRequestOptions
        )
    }

    /// - parameter path: (path) Path of the endpoint, anything after \"/1\" must be specified.
    /// - parameter parameters: (query) Query parameters to apply to the current query. (optional)
    /// - returns: AnyCodable
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func customGet(
        path: String,
        parameters: [String: AnyCodable]? = nil,
        requestOptions: RequestOptions? = nil
    ) async throws -> AnyCodable {
        let response: Response<AnyCodable> = try await customGetWithHTTPInfo(
            path: path,
            parameters: parameters,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // This method allow you to send requests to the Algolia REST API.
    //
    //
    // - parameter path: (path) Path of the endpoint, anything after \"/1\" must be specified.
    //
    // - parameter parameters: (query) Query parameters to apply to the current query. (optional)
    // - returns: RequestBuilder<AnyCodable>

    open func customGetWithHTTPInfo(
        path: String,
        parameters: [String: AnyCodable]? = nil,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<AnyCodable> {
        guard !path.isEmpty else {
            throw AlgoliaError.invalidArgument("path", "customGet")
        }

        var resourcePath = "/{path}"
        let pathPreEscape = "\(APIHelper.mapValueToPathItem(path))"
        resourcePath = resourcePath.replacingOccurrences(
            of: "{path}",
            with: pathPreEscape,
            options: .literal,
            range: nil
        )
        let body: AnyCodable? = nil
        let queryParameters: [String: AnyCodable]? = parameters

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "GET",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryParameters: queryParameters) + userRequestOptions
        )
    }

    /// - parameter path: (path) Path of the endpoint, anything after \"/1\" must be specified.
    /// - parameter parameters: (query) Query parameters to apply to the current query. (optional)
    /// - parameter body: (body) Parameters to send with the custom request. (optional)
    /// - returns: AnyCodable
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func customPost(
        path: String,
        parameters: [String: AnyCodable]? = nil,
        body: Codable? = nil,
        requestOptions: RequestOptions? = nil
    ) async throws -> AnyCodable {
        let response: Response<AnyCodable> = try await customPostWithHTTPInfo(
            path: path,
            parameters: parameters,
            body: body,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // This method allow you to send requests to the Algolia REST API.
    //
    //
    // - parameter path: (path) Path of the endpoint, anything after \"/1\" must be specified.
    //
    // - parameter parameters: (query) Query parameters to apply to the current query. (optional)
    //
    // - parameter body: (body) Parameters to send with the custom request. (optional)
    // - returns: RequestBuilder<AnyCodable>

    open func customPostWithHTTPInfo(
        path: String,
        parameters: [String: AnyCodable]? = nil,
        body: Codable? = nil,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<AnyCodable> {
        guard !path.isEmpty else {
            throw AlgoliaError.invalidArgument("path", "customPost")
        }

        var resourcePath = "/{path}"
        let pathPreEscape = "\(APIHelper.mapValueToPathItem(path))"
        resourcePath = resourcePath.replacingOccurrences(
            of: "{path}",
            with: pathPreEscape,
            options: .literal,
            range: nil
        )
        let body = body
        let queryParameters: [String: AnyCodable]? = parameters

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "POST",
            path: resourcePath,
            data: body ?? AnyCodable(),
            requestOptions: RequestOptions(headers: headers, queryParameters: queryParameters) + userRequestOptions
        )
    }

    /// - parameter path: (path) Path of the endpoint, anything after \"/1\" must be specified.
    /// - parameter parameters: (query) Query parameters to apply to the current query. (optional)
    /// - parameter body: (body) Parameters to send with the custom request. (optional)
    /// - returns: AnyCodable
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func customPut(
        path: String,
        parameters: [String: AnyCodable]? = nil,
        body: Codable? = nil,
        requestOptions: RequestOptions? = nil
    ) async throws -> AnyCodable {
        let response: Response<AnyCodable> = try await customPutWithHTTPInfo(
            path: path,
            parameters: parameters,
            body: body,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // This method allow you to send requests to the Algolia REST API.
    //
    //
    // - parameter path: (path) Path of the endpoint, anything after \"/1\" must be specified.
    //
    // - parameter parameters: (query) Query parameters to apply to the current query. (optional)
    //
    // - parameter body: (body) Parameters to send with the custom request. (optional)
    // - returns: RequestBuilder<AnyCodable>

    open func customPutWithHTTPInfo(
        path: String,
        parameters: [String: AnyCodable]? = nil,
        body: Codable? = nil,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<AnyCodable> {
        guard !path.isEmpty else {
            throw AlgoliaError.invalidArgument("path", "customPut")
        }

        var resourcePath = "/{path}"
        let pathPreEscape = "\(APIHelper.mapValueToPathItem(path))"
        resourcePath = resourcePath.replacingOccurrences(
            of: "{path}",
            with: pathPreEscape,
            options: .literal,
            range: nil
        )
        let body = body
        let queryParameters: [String: AnyCodable]? = parameters

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "PUT",
            path: resourcePath,
            data: body ?? AnyCodable(),
            requestOptions: RequestOptions(headers: headers, queryParameters: queryParameters) + userRequestOptions
        )
    }

    /// - parameter indexName: (path) Query Suggestions index name.
    /// - returns: BaseResponse
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func deleteConfig(indexName: String, requestOptions: RequestOptions? = nil) async throws -> BaseResponse {
        let response: Response<BaseResponse> = try await deleteConfigWithHTTPInfo(
            indexName: indexName,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // Deletes a Query Suggestions configuration.  Deleting only removes the configuration and stops updates to the
    // Query Suggestions index. To delete the Query Suggestions index itself, use the Search API and the `Delete an
    // index` operation.
    // Required API Key ACLs:
    //  - editSettings
    //
    // - parameter indexName: (path) Query Suggestions index name.
    // - returns: RequestBuilder<BaseResponse>

    open func deleteConfigWithHTTPInfo(
        indexName: String,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<BaseResponse> {
        guard !indexName.isEmpty else {
            throw AlgoliaError.invalidArgument("indexName", "deleteConfig")
        }

        var resourcePath = "/1/configs/{indexName}"
        let indexNamePreEscape = "\(APIHelper.mapValueToPathItem(indexName))"
        let indexNamePostEscape = indexNamePreEscape
            .addingPercentEncoding(withAllowedCharacters: .urlPathAlgoliaAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(
            of: "{indexName}",
            with: indexNamePostEscape,
            options: .literal,
            range: nil
        )
        let body: AnyCodable? = nil
        let queryParameters: [String: Any?]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "DELETE",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryParameters: queryParameters) + userRequestOptions
        )
    }

    /// - returns: [ConfigurationResponse]
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func getAllConfigs(requestOptions: RequestOptions? = nil) async throws -> [ConfigurationResponse] {
        let response: Response<[ConfigurationResponse]> =
            try await getAllConfigsWithHTTPInfo(requestOptions: requestOptions)

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // Retrieves all Query Suggestions configurations of your Algolia application.
    // Required API Key ACLs:
    //  - settings
    //     - returns: RequestBuilder<[ConfigurationResponse]>

    open func getAllConfigsWithHTTPInfo(requestOptions userRequestOptions: RequestOptions? = nil) async throws
    -> Response<[ConfigurationResponse]> {
        let resourcePath = "/1/configs"
        let body: AnyCodable? = nil
        let queryParameters: [String: Any?]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "GET",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryParameters: queryParameters) + userRequestOptions
        )
    }

    /// - parameter indexName: (path) Query Suggestions index name.
    /// - returns: ConfigurationResponse
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func getConfig(
        indexName: String,
        requestOptions: RequestOptions? = nil
    ) async throws -> ConfigurationResponse {
        let response: Response<ConfigurationResponse> = try await getConfigWithHTTPInfo(
            indexName: indexName,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // Retrieves a single Query Suggestions configuration by its index name.
    // Required API Key ACLs:
    //  - settings
    //
    // - parameter indexName: (path) Query Suggestions index name.
    // - returns: RequestBuilder<ConfigurationResponse>

    open func getConfigWithHTTPInfo(
        indexName: String,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<ConfigurationResponse> {
        guard !indexName.isEmpty else {
            throw AlgoliaError.invalidArgument("indexName", "getConfig")
        }

        var resourcePath = "/1/configs/{indexName}"
        let indexNamePreEscape = "\(APIHelper.mapValueToPathItem(indexName))"
        let indexNamePostEscape = indexNamePreEscape
            .addingPercentEncoding(withAllowedCharacters: .urlPathAlgoliaAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(
            of: "{indexName}",
            with: indexNamePostEscape,
            options: .literal,
            range: nil
        )
        let body: AnyCodable? = nil
        let queryParameters: [String: Any?]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "GET",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryParameters: queryParameters) + userRequestOptions
        )
    }

    /// - parameter indexName: (path) Query Suggestions index name.
    /// - returns: ConfigStatus
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func getConfigStatus(indexName: String, requestOptions: RequestOptions? = nil) async throws -> ConfigStatus {
        let response: Response<ConfigStatus> = try await getConfigStatusWithHTTPInfo(
            indexName: indexName,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // Reports the status of a Query Suggestions index.
    // Required API Key ACLs:
    //  - settings
    //
    // - parameter indexName: (path) Query Suggestions index name.
    // - returns: RequestBuilder<ConfigStatus>

    open func getConfigStatusWithHTTPInfo(
        indexName: String,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<ConfigStatus> {
        guard !indexName.isEmpty else {
            throw AlgoliaError.invalidArgument("indexName", "getConfigStatus")
        }

        var resourcePath = "/1/configs/{indexName}/status"
        let indexNamePreEscape = "\(APIHelper.mapValueToPathItem(indexName))"
        let indexNamePostEscape = indexNamePreEscape
            .addingPercentEncoding(withAllowedCharacters: .urlPathAlgoliaAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(
            of: "{indexName}",
            with: indexNamePostEscape,
            options: .literal,
            range: nil
        )
        let body: AnyCodable? = nil
        let queryParameters: [String: Any?]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "GET",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryParameters: queryParameters) + userRequestOptions
        )
    }

    /// - parameter indexName: (path) Query Suggestions index name.
    /// - returns: LogFile
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func getLogFile(indexName: String, requestOptions: RequestOptions? = nil) async throws -> LogFile {
        let response: Response<LogFile> = try await getLogFileWithHTTPInfo(
            indexName: indexName,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // Retrieves the logs for a single Query Suggestions index.
    // Required API Key ACLs:
    //  - settings
    //
    // - parameter indexName: (path) Query Suggestions index name.
    // - returns: RequestBuilder<LogFile>

    open func getLogFileWithHTTPInfo(
        indexName: String,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<LogFile> {
        guard !indexName.isEmpty else {
            throw AlgoliaError.invalidArgument("indexName", "getLogFile")
        }

        var resourcePath = "/1/logs/{indexName}"
        let indexNamePreEscape = "\(APIHelper.mapValueToPathItem(indexName))"
        let indexNamePostEscape = indexNamePreEscape
            .addingPercentEncoding(withAllowedCharacters: .urlPathAlgoliaAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(
            of: "{indexName}",
            with: indexNamePostEscape,
            options: .literal,
            range: nil
        )
        let body: AnyCodable? = nil
        let queryParameters: [String: Any?]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "GET",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryParameters: queryParameters) + userRequestOptions
        )
    }

    /// - parameter indexName: (path) Query Suggestions index name.
    /// - parameter configuration: (body)
    /// - returns: BaseResponse
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func updateConfig(
        indexName: String,
        configuration: QuerySuggestionsConfiguration,
        requestOptions: RequestOptions? = nil
    ) async throws -> BaseResponse {
        let response: Response<BaseResponse> = try await updateConfigWithHTTPInfo(
            indexName: indexName,
            configuration: configuration,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // Updates a QuerySuggestions configuration.
    // Required API Key ACLs:
    //  - editSettings
    //
    // - parameter indexName: (path) Query Suggestions index name.
    //
    // - parameter configuration: (body)
    // - returns: RequestBuilder<BaseResponse>

    open func updateConfigWithHTTPInfo(
        indexName: String,
        configuration: QuerySuggestionsConfiguration,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<BaseResponse> {
        guard !indexName.isEmpty else {
            throw AlgoliaError.invalidArgument("indexName", "updateConfig")
        }

        var resourcePath = "/1/configs/{indexName}"
        let indexNamePreEscape = "\(APIHelper.mapValueToPathItem(indexName))"
        let indexNamePostEscape = indexNamePreEscape
            .addingPercentEncoding(withAllowedCharacters: .urlPathAlgoliaAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(
            of: "{indexName}",
            with: indexNamePostEscape,
            options: .literal,
            range: nil
        )
        let body = configuration
        let queryParameters: [String: Any?]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "PUT",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryParameters: queryParameters) + userRequestOptions
        )
    }
}
