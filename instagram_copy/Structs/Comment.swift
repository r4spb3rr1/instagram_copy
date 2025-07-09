//
//  Comment.swift
//  instagram_copy
//
//  Created by magzhan on 02.07.2025.
//

import Foundation

struct Comment : Codable {
    var id : Int
    var senderUser: User
    var recieverUser: User
    var post: Post
    var likeCount: Int
}
