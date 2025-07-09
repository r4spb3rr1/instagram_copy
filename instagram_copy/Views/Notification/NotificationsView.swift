//
//  NotificationView.swift
//  instagram_copy
//
//  Created by magzhan on 25.06.2025.
//

import SwiftUI

struct NotificationsView: View {
    
    @Binding var showNotification : Bool
    
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
            
            ScrollView() {
                let columns : [GridItem] = [
                    GridItem(.flexible(), spacing : 1, alignment: nil),
                ]
                
                
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 0,
                    content: {
                        ForEach(allNotifications) { notification in
                            NotificationView(notification: notification)
                        }
                    })
            }
        }
    }
}

