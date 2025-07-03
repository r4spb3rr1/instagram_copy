//
//  SearchPagaView.swift
//  18.06 first project
//
//  Created by magzhan on 23.06.2025.
//

import SwiftUI

struct SearchPageView: View {
    @State var showPost: Bool = false
    @State var curPost: Post? = nil
    
    let posts : [Post] = allPosts
    var body: some View {
        ScrollView
        {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/)
            {
                Label("Search", systemImage: "magnifyingglass")
                .foregroundColor(.black)
                Spacer()
            }
            .buttonStyle(.bordered)
            .padding()
            
            let columns : [GridItem] = [
                GridItem(.flexible(), spacing : 1, alignment: nil),
                GridItem(.flexible(), spacing : 1, alignment: nil),
                GridItem(.flexible(), spacing : 1, alignment: nil)
            ]
            LazyVGrid(columns: columns, spacing: 1) {
                ForEach(posts) { post in
                    Button(action: {
                        showPost.toggle()
                        curPost = post
                    }) {
                        AsyncImage(url: URL(string: post.imageUrl)) { image in
                            image
                                .resizable()
                                .scaledToFill()
                        } placeholder: {
                            Color.gray
                        }
                        .frame(width: UIScreen.main.bounds.width / 3,
                               height: UIScreen.main.bounds.width / 3)
                        .clipped()
                    }
                }
            }
            .sheet(isPresented: $showPost) {
                if let unwrappedPost = curPost {
                    VStack(alignment: .leading) {
                        PostView(post: unwrappedPost)
                    }
                } else {
                    Text("Loading...")
                }
            }
            .padding(.top, 20)
        }
        
    }
}

#Preview {
    SearchPageView()
}
