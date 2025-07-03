import SwiftUI

struct ShowProfilePicturesView: View {
    var curUser: User
    @State var showPost: Bool = false
    @State var curPost: Post? = nil
    
    let columns: [GridItem] = Array(repeating: GridItem(.flexible(), spacing: 1), count: 3)
    
    var filteredPosts: [Post] {
        allPosts.filter { $0.user == curUser }
    }
    
    var body: some View {
            LazyVGrid(columns: columns, spacing: 1) {
            ForEach(filteredPosts) { post in
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

#Preview
{
    ShowProfilePicturesView(curUser: allUsers[0])
}
