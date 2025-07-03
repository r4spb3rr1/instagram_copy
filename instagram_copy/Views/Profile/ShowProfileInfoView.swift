//
//  ShowProfileInfoVieew.swift
//  18.06 first project
//
//  Created by magzhan on 23.06.2025.
//

import SwiftUI

struct ShowProfileInfoView: View {
    var user : User
    var body: some View {
        VStack()
        {
            HStack()
            {
                Text(user.username)
                    .padding(10)
                    .font(.system(size:24))
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {})
                {
                    Image(systemName: "plus.square")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
                .foregroundColor(.black)
                
                Button(action: {})
                {
                    Image(systemName: "line.3.horizontal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .padding(.horizontal, 20)
                }
                .foregroundColor(.black)
                
            }
            
            HStack()
            {
                UserView(user: user)
                    .frame(width: 90, height: 90)
                    .padding(30)
                Spacer()
                VStack()
                {
                    Text("1")
                    Text("posts")
                }
                Spacer()
                VStack()
                {
                    Text(String(user.followersCount))
                    Text("followers")
                }
                Spacer()
                VStack()
                {
                    Text(String(user.followingCount))
                    Text("following")
                }
                .padding(.trailing, 20)
            }
            Spacer()
            HStack()
            {
                Text(user.user_caption)
                    .padding(.leading)
                Spacer()
            }
            Spacer()
        }
    }
}


