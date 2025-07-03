//
//  PostView.swift
//  18.06 first project
//
//  Created by magzhan on 18.06.2025.
//

import SwiftUI

struct PostView: View {
    
    let post : Post
//    let post = allPosts[0]
    
    var body: some View {
        VStack(alignment : .leading)
        {
            
            HStack()
            {
                UserView(user: post.user).frame(width: 24, height: 24).padding(.leading, 5)
                Text(post.user.username).font(.headline)
            }
            GeometryReader { geometry in
                AsyncImage(url: URL(string: post.imageUrl))
                { image in
                    image
                        .image?.resizable()
                        .aspectRatio(contentMode: .fit)
                    
                }
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
//    PostView()
//}

