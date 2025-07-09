//
//  PopUpStories.swift
//  instagram_copy
//
//  Created by magzhan on 30.06.2025.
//

import SwiftUI

struct PopUpStories: View {
    
//    var currentUser: User
    var currentUser : User
    @Binding var showStory: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading)
        {
            
            AsyncImage(url: URL(string: "https://dummyimage.com/1080x1920/0049b2/f47878&text=Stories+\(currentUser.id)"))
            { image in
                image
                    .image?.resizable()
                    .aspectRatio(contentMode: .fit)
                
            }
                .frame(width: UIScreen.main.bounds.width)
                .clipped()
            
            HStack(){
                Button(action: {
                    withAnimation {
                        showStory = false
                    }
                })
                {
                    Image(systemName: "arrow.left").resizable().frame(width: 24, height: 24)
                }
                .padding(.leading, 15)
                UserView(user: currentUser)
                    .frame(width: 56, height: 56)
                    .padding(10)
                Text(currentUser.username).fontWeight(.bold)
            }
                
        }
        .foregroundColor(.black)
        .padding(20)
        
    }
}


