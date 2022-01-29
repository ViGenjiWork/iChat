//
//  AuthError.swift
//  iChat
//
//  Created by Mikhail Zharkov on 29.01.2022.
//

import Foundation

enum AuthError {
    case notFilled
    case invalidEmail
    case passwordsNotMatched
    case unknownError
    case serverError
}

extension AuthError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notFilled:
            return NSLocalizedString("Fill all the fields", comment: "")
        case .invalidEmail:
            return NSLocalizedString("Email format is not valid", comment: "")
        case .passwordsNotMatched:
            return NSLocalizedString("Passwords doesn't confirm", comment: "")
        case .unknownError:
            return NSLocalizedString("Unknown error", comment: "")
        case .serverError:
            return NSLocalizedString("Server error", comment: "")
        }
    }
}
