//
//  CacheProviderError.swift
//  HelperKit
//
//  Created by Matt Croxson on 11/8/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

/// Error that an object conforming to `CacheProvider` can throw.
public enum CacheProviderError: LocalizedError {

    /// An object with ID was requested by no ID was provided.
    case noId(objectType: Any)

    /// The item identifier could not be found for the provided object type.
    case notFound(identifier: String)

    /// The object type is not available in the cache service.
    case unknownObject(objectType: Any)

    /// An array of objects of the provided type failed to populate.
    case populateFailed(objectType: Any)

    /// Object type returned is incompatible with the object type requested.
    case incompatibleObject

    /// General error.
    case general(error: Error)

    public var errorDescription: String? {
        switch self {
        case let .noId(objectType): return "No object identifier provided for object type: \(objectType)"
        case let .notFound(identifier): return "Item with identifier \"\(identifier)\" could not be found."
        case let .unknownObject(objectType): return "Item type \"\(objectType.self)\" not available in cache service."
        case let .populateFailed(objectType): return "Object array for type \"\(objectType.self)\" failed to populate."
        case .incompatibleObject: return "Object type returned is incompatible with requested type."
        case let .general(error): return error.localizedDescription
        }
    }
}
