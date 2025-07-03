//
//  MessageView.swift
//  instagram_copy
//
//  Created by magzhan on 02.07.2025.
//

import SwiftUI

struct MessageView: View {
    
    @State var message: Message
    @State var curUser: User
    @State private var text: String = ""
    
    var body: some View {
        HStack {
            if curUser == message.recieverUser
            {
                UserView(user: curUser)
                    .frame(width:36, height: 36)
                Text(message.messageText)
                    .font(.system(size: 22))
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                Spacer()
            }
            else
            {
                Spacer()
                Text(message.messageText)
                    .font(.system(size: 22))
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                UserView(user: message.recieverUser)
                    .frame(width:36, height: 36)
            }
            
        }
        .padding(.horizontal, 20)
        
        
    }
}

#Preview {
    MessageView(message: allMessages[0], curUser: allUsers[1])
}
