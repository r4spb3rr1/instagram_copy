//
//  ChatView.swift
//  instagram_copy
//
//  Created by magzhan on 02.07.2025.
//

import SwiftUI

struct ChatView: View {
    @State var messageText = ""
    
    @Binding var showMessage: Bool
    
    var senderUser: User
    var recieverUser: User
    
    
    var body: some View {
        VStack{
            HStack(alignment: .top){
                Button(action: {
                    withAnimation {
                        showMessage = false
                    }
                }) {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 24, height: 24)
                }
                .padding(.leading, 15)
                UserView(user: senderUser)
                    .frame(width: 32, height: 32)
                Text(senderUser.username)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            Spacer()
            VStack {
                ForEach(allMessages){ curMessage in
                    if (curMessage.senderUser == senderUser && curMessage.recieverUser == recieverUser || curMessage.senderUser == recieverUser && curMessage.recieverUser == senderUser)
                    {
                        MessageView(message: curMessage, curUser: senderUser)
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
}

//#Preview {
//    ChatView(senderUser: allUsers[0], recieverUser: allUsers[1])
//}
