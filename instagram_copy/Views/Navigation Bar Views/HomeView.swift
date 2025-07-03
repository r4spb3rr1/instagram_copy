//
//  MainView.swift
//  18.06 first project
//
//  Created by magzhan on 18.06.2025.
//

import SwiftUI

struct HomeView: View {
    @State private var showMessages = false
    @State private var showNotifications = false

    var body: some View {
        ZStack {
            if !showMessages && !showNotifications {
                VStack {
                    TopNavigationView(
                        onMessageTap: { withAnimation { showMessages = true } },
                        onNotificationTap: { withAnimation { showNotifications = true } }
                    )
                    FeedView()
                }
                .transition(.move(edge: .leading))
            }

            if showMessages {
                MessagesView(showMessages: $showMessages)
                    .transition(.move(edge: .trailing))
                    .zIndex(1)
            }

            if showNotifications {
                NotificationsView(showNotification: $showNotifications)
                    .transition(.move(edge: .trailing))
                    .zIndex(1)
            }
        }
        .animation(.easeInOut, value: showMessages || showNotifications)
    }
}

#Preview {
    HomeView()
}
