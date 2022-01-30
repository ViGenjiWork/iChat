//
//  UserError.swift
//  iChat
//
//  Created by Mikhail Zharkov on 30.01.2022.
//

import Foundation

enum UserError {
    case notFilled
    case photoNotExist
    case cannotGetUserInfo
    case cannotUnwrapToMUser
}

extension UserError: LocalizedError {
    
    var errorDescription: String? {
        switch self {
        case .notFilled:
            return NSLocalizedString("Fill all the fields", comment: "")
        case .photoNotExist:
            return NSLocalizedString("User doesn't pick photo", comment: "")
        case .cannotGetUserInfo:
            return NSLocalizedString("Can't load users info from database", comment: "")
        case .cannotUnwrapToMUser:
            return NSLocalizedString("Can't convert MUser to User", comment: "")
        }
    }
}

