//
//  ProfileView.swift
//  18.06 first project
//
//  Created by magzhan on 20.06.2025.
//

import SwiftUI

struct ProfileView: View {
//    let onProfileTap : () -> Void
    
    @State private var showProfile = false
    
    let user = curUser
    var body: some View {
        VStack()
        {
            ScrollView()
            {
                ShowProfileInfoView(user: user)
                ShowProfilePicturesView(curUser: user)
            }
        }
    }
}

#Preview {
    ProfileView()
}
