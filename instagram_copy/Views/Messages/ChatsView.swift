//
//  ChatView.swift
//  18.06 first project
//
//  Created by magzhan on 23.06.2025.
//

import SwiftUI

struct ChatsView: View {
    let message : Message
    @State private var showChat = false
    
    var body: some View {
        HStack(alignment: .top)
        {
            UserView(user: message.senderUser).frame(width: 64, height: 64)
            VStack(alignment: .leading)
            {
                Text(message.senderUser.username).fontWeight(.bold).font(.system(size: 24))
                    
                Text(message.messageText).font(.system(size: 18)).foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.leading, 10)
        .foregroundColor(.black)
        .padding(.vertical, 5)
        .overlay(
            Rectangle()
                .stroke(Color.gray, lineWidth: 1)
        )
    }
}


