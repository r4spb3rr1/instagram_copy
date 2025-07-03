//
//  MessagesView.swift
//  18.06 first project
//
//  Created by magzhan on 23.06.2025.
//

import SwiftUI

struct MessagesView: View {
    
    @Binding var showMessages: Bool
    
    var body: some View {
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
                
                
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 0,
                    content: {
                        ForEach(allMessages) { message in
                            Button(action:{})
                            {
                                ChatsView(message: message)
                            }
                        }
                    })
                
                
            }
        }
        .background(Color.white.ignoresSafeArea())
    }
}

