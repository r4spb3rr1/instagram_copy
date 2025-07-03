//
//  UserViewForStories.swift
//  18.06 first project
//
//  Created by magzhan on 23.06.2025.
//

import SwiftUI

struct UserViewForStories : View {
    
    let user : User
    var body: some View {
        Button(action : {})
        {
            VStack()
            {
                UserView(user: user)
                    .frame(width: 64, height: 64)
                Text(user.username)
            }
            .padding(.leading, 20)
        }
        .foregroundColor(.black)
    }
}
