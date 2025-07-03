//
//  ContentView.swift
//  18.06 first project
//
//  Created by magzhan on 18.06.2025.
//

import SwiftUI

struct LoginView: View {
    @State var login = ""
    @State var password = ""
    
//    @Binding var isLoggedIn: Bool
//    @Binding var loggedUser: User?
    
    @Binding var isLoggedIn: Bool
    @Binding var loggedUser: User?
    
 
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Text("Instagram")
                .font(.custom("Lobster-Regular", size: 28))
                .padding(.top, 40)
            
            Spacer()
            TextField("Phone number, username or email", text: $login)
                .padding(.vertical, 5)
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.system(size: 18))
                .padding(.horizontal, 30)
                .cornerRadius(5)
                .textFieldStyle(.roundedBorder)
                .autocapitalization(.none) 
                .disableAutocorrection(true)
            
            SecureField("Password", text: $password)
                .autocapitalization(.none)
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.system(size: 18))
                .background(Color(.systemGray6))
                .cornerRadius(5)
                .padding(.horizontal, 30)
                .textFieldStyle(.roundedBorder)
            Button(action:{}){
                (Text("Forgot password?"))
                    .foregroundColor(.blue)
                    .font(.system(size:16))
            }
            .padding()
            .buttonStyle(PlainButtonStyle())
            .padding(.horizontal, 20)
            
            Spacer()
            Button(action:{
                Task{
                    let result = await authorization(username: login, password: password)
                    if result.0
                    {
                        isLoggedIn = true
                        loggedUser = result.1!
                        curUser = loggedUser!
                        print("1")
                    }
                    else
                    {
                        print("2")
                    }
                }
            })
            {
                Text("Login")
                    .padding(.horizontal, 30)
                    .padding(.vertical, 5)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(5)
            }
            .buttonStyle(.borderedProminent)
            .padding()
            Spacer()
            HStack{
                Text("Don't have an account?")
                Button(action:{}){
                    (Text("Sing Up"))
                        .foregroundColor(.blue)
                        .font(.system(size:16))
                }
            }
        }
        .padding(10)
    }

}

//#Preview {
//   LoginView(isLoggedIn: .constant(true), loggedUser: .constant(curUser))
//    LoginView(isLoggedIn: $isLoggedIn, loggedUser: $loggedUser)
//}
