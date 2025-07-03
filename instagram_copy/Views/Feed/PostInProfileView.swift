//
//  PostInProfileView.swift
//  18.06 first project
//
//  Created by magzhan on 23.06.2025.
//

import SwiftUI


struct PostInProfileView: View {
    @Binding var showPosts : Bool
    
    let post : Post
//    let post = Post(user: User(username: "r4spb3rr1", user_caption: "21 y.o.", pfp: "pfp1"), caption: "love nature<3", timestamp: "2025.06.13", image: "Im1")
    
    var body: some View {
        VStack(alignment : .leading)
        {
            HStack()
            {
                Button(action: {
                    withAnimation {
                        showPosts = false
                    }
                })
                {
                    Image(systemName: "arrow.left").resizable().frame(width: 24, height: 24)
                }
                .padding(.leading, 15)
                Text("Posts").fontWeight(.bold).font(.system(size: 24))
                Spacer()
            }
            
            HStack()
            {
                UserView(user: post.user).frame(width: 24, height: 24).padding(.leading, 5)
                Text(post.user.username).font(.headline)
            }
            GeometryReader { geometry in
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.width)
                    .clipped()
                
            }
            .frame(height: UIScreen.main.bounds.width)
            HStack()
            {
                Button(action: {})
                {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
                .foregroundColor(.black)
                .padding(.leading, 5)
                Button(action: {})
                {
                    Image(systemName: "message")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
                .foregroundColor(.black)
                .padding(5)
                
                Spacer()
            }
            
            HStack()
            {
                Text(post.user.username).fontWeight(.bold).font(.system(size: 14)).padding(.leading, 5)
                Text(post.caption).font(.system(size : 14)).padding(.leading, 5)
            }
            Text(post.timestamp).font(.system(size : 12)).foregroundColor(.gray).padding(.leading, 5)
        }
    }
}

//#Preview {
//    //PostInProfileView()
//}
