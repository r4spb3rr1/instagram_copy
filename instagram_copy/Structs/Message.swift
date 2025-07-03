//
//  Message.swift
//  18.06 first project
//
//  Created by magzhan on 23.06.2025.
//

import SwiftUI

struct Message : Identifiable
{
    let id = UUID()
    let senderUser : User
    let recieverUser : User
    let timestamp : String
    let messageText : String
    
    init(senderUser: User, recieverUser: User, timestamp: String, messageText: String) {
        self.senderUser = senderUser
        self.recieverUser = recieverUser
        self.timestamp = timestamp
        self.messageText = messageText
    }
}

