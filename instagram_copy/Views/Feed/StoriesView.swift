//
//  StoriesView.swift
//  18.06 first project
//
//  Created by magzhan on 20.06.2025.
//

import SwiftUI



// StoriesView.swift

struct StoriesView : View {
    
    @State var showStories: Bool = false
    @State var curUser: User? = nil

    let users: [User] = allUsers

    var body: some View {
        ZStack {
            if !showStories {
                VStack {
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(users) { user in
                                Button(action: {
                                    curUser = user
                                    withAnimation {
                                        showStories = true
                                    }
                                }) {
                                    UserViewForStories(user: user)
                                }
                            }
                        }
                        .frame(height: 100)
                    }
                }
                .transition(.move(edge: .top))
            }

            if showStories {
                if let unwrappedUser = curUser {
                    PopUpStories(currentUser: unwrappedUser, showStory: $showStories)
                        .transition(.move(edge: .bottom))
                        .zIndex(1)
                } else {
                    HStack {
                        Button(action: {
                            withAnimation {
                                showStories = false
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
        .animation(.easeInOut, value: showStories)
    }
}


#Preview
{
    StoriesView()
}

