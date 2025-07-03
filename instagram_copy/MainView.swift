//
//  NavigationView.swift
//  18.06 first project
//
//  Created by magzhan on 23.06.2025.
//

import SwiftUI

struct MainView: View {
    @State var isLoggedIn = false
    @State var currentUser: User?
    var body: some View {
        if !isLoggedIn
        {
            LoginView(isLoggedIn: $isLoggedIn, loggedUser: $currentUser)
        }
        else
        {
            TabView()
            {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                SearchPageView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                NewPostView()
                    .tabItem {
                        Image(systemName: "plus.square")
                    }
                ReelsView()
                    .tabItem {
                        Image(systemName: "play.rectangle")
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                    }
            }
        }
    }
}

#Preview {
    MainView()
}
