//
//  FeedView.swift
//  18.06 first project
//
//  Created by magzhan on 20.06.2025.
//

import SwiftUI


struct FeedView : View
{
    
    let posts : [Post] = allPosts
//    [
//        Post(user: User(username: "r4spb3rr1", user_caption: "21 y.o."), caption: "love nature<3", timestamp: "2025.06.13"),
//        Post(user: User(username: "user1", user_caption: "21 y.o."), caption: "wow", timestamp: "2025.05.29"),
//        Post(user: User(username: "user2", user_caption: "21 y.o."), caption: "hello world", timestamp: "2025.04.20")
//    ]
    var body: some View{
        ScrollView {
            StoriesView()
            VStack(spacing: 16) {
                ForEach(posts) { postt in
                    PostView(post: postt)
                    Spacer()
                }
            }
            .padding(.top)
            
        }
    }
    
}

//Post(username: "maga", caption: "helloworld", timestamp: "2020", image: Image("logo"))
#Preview{
    FeedView()
}
