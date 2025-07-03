//
//  UserView.swift
//  18.06 first project
//
//  Created by magzhan on 20.06.2025.
//

import SwiftUI

struct UserView : View {
    
    let user : User
    var body: some View {
        AsyncImage(url: URL(string: user.pfp))
        { image in
            image
                .image?.resizable()
                .aspectRatio(contentMode: .fit)
            
        }
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(
                Circle()
                    .stroke(Color.red, lineWidth: 3)
            )
            .shadow(radius: 3)
    }
}
