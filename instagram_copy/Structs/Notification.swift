//
//  Notification.swift
//  instagram_copy
//
//  Created by magzhan on 25.06.2025.
//

import SwiftUI


struct Notification : Identifiable
{
    let id = UUID()
    let recieverUser : User
    let senderUser : User
    let post : Post
    
    init(recieverUser: User, senderUser: User, post: Post) {
        self.recieverUser = recieverUser
        self.senderUser = senderUser
        self.post = post
    }
}
