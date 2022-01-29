//
//  MUser.swift
//  iChat
//
//  Created by Mikhail Zharkov on 26.01.2022.
//

import Foundation

struct MUser: Hashable, Decodable {
    
    var username: String
    var email: String
    var avatarStringURL: String
    var description: String
    var sex: String
    var id: String
    
    var representation: [String:Any] {
        var rep = ["username": username]
        rep["email"] = email
        rep["description"] = description
        rep["sex"] = sex
        rep["avatarStringURL"] = avatarStringURL
        rep["uid"] = id
        return rep
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    func contains(filter: String?) -> Bool {
        guard let filter = filter else { return true }
        if filter.isEmpty { return true }
        let lowerCasedFilter = filter.lowercased()
        return username.lowercased().contains(lowerCasedFilter)
    }
    
    static func == (lhs: MUser, rhs: MUser) -> Bool {
        return lhs.id == rhs.id
    }
}
