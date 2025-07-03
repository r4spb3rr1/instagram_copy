//
//  StoriesView.swift
//  18.06 first project
//
//  Created by magzhan on 20.06.2025.
//

import SwiftUI



struct StoriesView : View {
    
    @State var showStories: Bool = false
    @State var curUser: User? = nil

    let users : [User] = allUsers

    var body: some View {
        ZStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(users) { user in
                        Button(action: {
                            curUser = user
                        }) {
                            UserViewForStories(user: user)
                        }
                    }
                }
                .frame(height: 100)
            }
        }
        .fullScreenCover(item: $curUser) { user in
            PopUpStories(currentUser: user)
        }
    }
}

#Preview
{
    StoriesView()
}

