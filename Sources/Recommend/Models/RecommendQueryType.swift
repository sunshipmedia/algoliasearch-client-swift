// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

/// Determines if and how query words are interpreted as prefixes.  By default, only the last query word is treated as a
/// prefix (&#x60;prefixLast&#x60;). To turn off prefix search, use &#x60;prefixNone&#x60;. Avoid &#x60;prefixAll&#x60;,
/// which treats all query words as prefixes. This might lead to counterintuitive results and makes your search slower. 
/// For more information, see [Prefix searching](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/override-search-engine-defaults/in-depth/prefix-searching/).
public enum RecommendQueryType: String, Codable, CaseIterable {
    case prefixLast
    case prefixAll
    case prefixNone
}

extension RecommendQueryType: Hashable {}
