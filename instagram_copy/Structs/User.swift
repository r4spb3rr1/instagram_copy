//
//  User.swift
//  18.06 first project
//
//  Created by magzhan on 20.06.2025.
//

import SwiftUI

class User : Identifiable, Equatable, Codable
{
    let id : Int
    let username : String
    let user_caption : String
    let password: String
    let followingCount : Int
    let followersCount: Int
    
    var pfp: String {
        return "https://robohash.org/\(id)?size=200x200"
    }
    
    init(id: Int, username: String, password: String, user_caption: String, followingCount: Int, followersCount: Int) {
        self.id = id
        self.username = username
        self.password = password
        self.user_caption = user_caption
        self.followingCount = followingCount
        self.followersCount = followersCount
    }
    static func == (lhs: User, rhs: User) -> Bool {
            lhs.id == rhs.id
        }
}
