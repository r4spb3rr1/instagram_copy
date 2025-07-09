//
//  MessagesView.swift
//  18.06 first project
//
//  Created by magzhan on 23.06.2025.
//

import SwiftUI

func mergeMessages() -> [Message]
{
    var mergedusernames: Set<String> = []
    var mergedMessages: [Message] = []
    
    for message in allMessages{
        let medgedUsername = message.recieverUser.username + message.senderUser.username
        let buffString = String(medgedUsername.sorted())
        let inserted = mergedusernames.contains(buffString)
        if !inserted
        {
            mergedusernames.insert(buffString)
            mergedMessages.append(message)
        }
    }
    return mergedMessages
}

struct MessagesView: View {
    
    @Binding var showMessages: Bool
    
    @State private var showMessage = false
    @State var curMessage: Message? = nil
    
    var body: some View {
        ZStack{
            if !showMessage{
                VStack()
                {
                    HStack()
                    {
                        Button(action: {
                            withAnimation {
                                showMessages = false
                            }
                        })
                        {
                            Image(systemName: "arrow.left").resizable().frame(width: 24, height: 24)
                        }
                        .padding(.leading, 15)
                        Text("r4spb3rr1").fontWeight(.bold).font(.system(size: 24))
                        Spacer()
                    }
                    .foregroundColor(.black)
                    
                    ScrollView()
                    {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/)
                        {
                            Label("Search", systemImage: "magnifyingglass")
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .buttonStyle(.bordered)
                        .padding()
                        
                        let columns : [GridItem] = [
                            GridItem(.flexible(), spacing : 1, alignment: nil),
                        ]
                        
                        let mergedMessages = mergeMessages()
                        
                        LazyVGrid(
                            columns: columns,
                            alignment: .center,
                            spacing: 0,
                            content: {
                                ForEach(mergedMessages) { message in
                                    Button(action:{
                                        curMessage = message
                                        withAnimation {
                                            showMessage = true
                                        }})
                                    {
                                        ChatsView(message: message)
                                    }
                                }
                            })
                        
                        
                    }
                }
                .background(Color.white.ignoresSafeArea())
                .transition(.move(edge: .top))
            }
            if showMessage
            {
                if let unwrappedMessage = curMessage {
                    ChatView(showMessage: $showMessage, senderUser: unwrappedMessage.senderUser, recieverUser: unwrappedMessage.recieverUser)
                        .transition(.move(edge: .bottom))
                        .zIndex(1)
                } else {
                    HStack {
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
                        Text("Loading...")
                    }
                    .foregroundColor(.black)
                }
            }
        }
        .animation(.easeInOut, value: showMessage)
    }
}

//#Preview {
//    MessagesView(showMessages: .constant(Bool))
//}
