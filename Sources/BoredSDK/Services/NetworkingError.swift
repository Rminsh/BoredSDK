//
//  NetworkingError.swift
//  
//
//  Created by armin on 9/13/21.
//

import Foundation

public enum NetworkingError: Error {
    case badNetworkingRequest
    case errorParse
    case unexpectedError
}

extension NetworkingError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .badNetworkingRequest:
            return NSLocalizedString("Network error", comment: "")
        case .errorParse:
            return NSLocalizedString("Parsing error", comment: "")
        case .unexpectedError:
            return NSLocalizedString("Unexpected network error", comment: "")
        }
    }
}

extension NetworkingError: Identifiable {
    public var id: String? {
        errorDescription
    }
}
