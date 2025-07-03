//
//  NotificationView.swift
//  instagram_copy
//
//  Created by magzhan on 25.06.2025.
//

import SwiftUI

struct NotificationView: View {
    
    var notification : Notification
    
    var body: some View {
        VStack {
            HStack()
            {
                Button(action:{})
                {
                    UserView(user: notification.senderUser)
                        .frame(width: 48, height: 48)
                    
                    Text(notification.senderUser.username).fontWeight(.bold)
                        .padding(.leading, 5)
                }
                .foregroundColor(.black)
                Text("liked your post")
                Spacer()
                Button(action:{})
                {
                    AsyncImage(url: URL(string: notification.post.imageUrl)){image in
                        image
                            .image?.resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    .frame(width: 42)
                    .shadow(radius: 3)
                    
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 5)
        }
        .overlay(
            Rectangle()
                .stroke(Color.gray, lineWidth: 1)
            )
        
        
    }
}

#Preview {
    NotificationView(notification: allNotifications[0])
}
