//
//  NotificationView.swift
//  instagram_copy
//
//  Created by magzhan on 25.06.2025.
//

import SwiftUI

struct NotificationsView: View {
    
    @Binding var showNotification : Bool
    
    let notifications : [Notification] = [
        Notification(recieverUser: allUsers[0], senderUser: allUsers[1], post: allPosts[0]),
        Notification(recieverUser: allUsers[0], senderUser: allUsers[2], post: allPosts[1]),
        Notification(recieverUser: allUsers[0], senderUser: allUsers[3], post: allPosts[2]),
        Notification(recieverUser: allUsers[0], senderUser: allUsers[4], post: allPosts[2]),
        Notification(recieverUser: allUsers[0], senderUser: allUsers[1], post: allPosts[0]),
        Notification(recieverUser: allUsers[0], senderUser: allUsers[0], post: allPosts[1]),
        Notification(recieverUser: allUsers[0], senderUser: allUsers[4], post: allPosts[2])
    ]
    
    var body: some View {
        VStack()
        {
            HStack()
            {
                Button(action: {
                    withAnimation {
                        showNotification = false
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
                let columns : [GridItem] = [
                    GridItem(.flexible(), spacing : 1, alignment: nil),
                ]
                
                
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 0,
                    content: {
                        ForEach(notifications) { notification in
                            NotificationView(notification: notification)
                        }
                    })
            }
        }
    }
}

