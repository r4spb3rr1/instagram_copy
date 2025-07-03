//
//  ChatView.swift
//  instagram_copy
//
//  Created by magzhan on 02.07.2025.
//

import SwiftUI

struct ChatView: View {
    @State var messageText = ""
    var senderUser: User
    var recieverUser: User
    var body: some View {
        HStack(alignment: .top){
            UserView(user: recieverUser)
                .frame(width: 32, height: 32)
            Text(recieverUser.username)
                .fontWeight(.bold)
            Spacer()
        }
        .padding()
        Spacer()
        VStack {
            ForEach(allMessages){ curMessage in
                if (curMessage.senderUser == senderUser && curMessage.recieverUser == recieverUser || curMessage.senderUser == recieverUser && curMessage.recieverUser == senderUser)
                {
                    MessageView(message: curMessage, curUser: recieverUser)
                }
            }
            TextField("Message", text: $messageText)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .padding()
                .autocapitalization(.none)
                .disableAutocorrection(true)
        }
        
        .padding(.vertical, 10)
    }
}

#Preview {
    ChatView(senderUser: allUsers[0], recieverUser: allUsers[1])
}
