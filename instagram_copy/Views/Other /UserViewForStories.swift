// UserViewForStories.swift

import SwiftUI

struct UserViewForStories : View {
    let user: User

    var body: some View {
        VStack {
            UserView(user: user)
                .frame(width: 64, height: 64)
            Text(user.username)
        }
        .padding(.leading, 20)
        .foregroundColor(.black)
    }
}
