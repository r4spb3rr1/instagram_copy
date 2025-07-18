//
//  DataFetching.swift
//  instagram_copy
//
//  Created by magzhan on 30.06.2025.
//

import Foundation
import SwiftUICore


var allUsers : [User] = [
    User(id: 1, username: "r4spb3rr1", password: "password1", user_caption: "21 y.o.", followingCount: 100, followersCount: 101),
    User(id: 2, username: "codewizard", password: "password2", user_caption: "iOS dev", followingCount: 2100, followersCount: 23),
    User(id: 3, username: "ghost", password: "password3", user_caption: "lurker", followingCount: 200, followersCount: 222),
    User(id: 4, username: "numberone", password: "password4", user_caption: "oneoneone", followingCount: 300, followersCount: 333),
    User(id: 5, username: "thebest", password: "password5", user_caption: "betterthanyou", followingCount: 400, followersCount: 444),
    User(id: 6, username: "s1mple", password: "password6", user_caption: "iamhere", followingCount: 111, followersCount: 9999),
]

var curUser = allUsers[0]

var allPosts : [Post] = [
    Post(id: 1, user: allUsers[0], caption: "love nature<3", timestamp: "2025.06.13"),
    Post(id: 2, user: allUsers[0], caption: "wow", timestamp: "2025.05.29"),
    Post(id: 3, user: allUsers[0], caption: "hello world", timestamp: "2025.04.20"),
    Post(id: 4, user: allUsers[1], caption: "hello worldo", timestamp: "2025.04.20"),
    Post(id: 5, user: allUsers[2], caption: "i am not here", timestamp: "2025.04.20"),
    Post(id: 6, user: allUsers[2], caption: "invisible", timestamp: "2025.04.20"),
    Post(id: 7, user: allUsers[3], caption: "1 1 1", timestamp: "2025.04.20"),
    Post(id: 8, user: allUsers[4], caption: ";p", timestamp: "2025.04.20"),
    Post(id: 9, user: allUsers[5], caption: "still the s1", timestamp: "2025.04.20"),
    Post(id: 10, user: allUsers[4], caption: ";p", timestamp: "2025.04.20"),
    Post(id: 11, user: allUsers[5], caption: "still the s1", timestamp: "2025.04.20"),
    Post(id: 12, user: allUsers[4], caption: ";p", timestamp: "2025.04.20"),
    Post(id: 13, user: allUsers[5], caption: "still the s1", timestamp: "2025.04.20"),
    Post(id: 14, user: allUsers[4], caption: ";p", timestamp: "2025.04.20"),
    Post(id: 15, user: allUsers[5], caption: "still the s1", timestamp: "2025.04.20"),
    Post(id: 16, user: allUsers[4], caption: ";p", timestamp: "2025.04.20"),
    Post(id: 17, user: allUsers[5], caption: "still the s1", timestamp: "2025.04.20"),
]

var allMessages : [Message] = [
    Message(senderUser: allUsers[1], recieverUser: allUsers[0], timestamp: "0", messageText: "hello!"),
    Message(senderUser: allUsers[1], recieverUser: allUsers[0], timestamp: "0", messageText: "aaa!"),
    Message(senderUser: allUsers[1], recieverUser: allUsers[0], timestamp: "0", messageText: "ddd!"),
    Message(senderUser: allUsers[0], recieverUser: allUsers[1], timestamp: "0", messageText: "vv!"),
    Message(senderUser: allUsers[0], recieverUser: allUsers[1], timestamp: "0", messageText: "sss!"),
    Message(senderUser: allUsers[1], recieverUser: allUsers[0], timestamp: "0", messageText: "asd!"),
    Message(senderUser: allUsers[0], recieverUser: allUsers[1], timestamp: "0", messageText: "dsa!"),
    Message(senderUser: allUsers[2], recieverUser: allUsers[0], timestamp: "0", messageText: "some message"),
    Message(senderUser: allUsers[0], recieverUser: allUsers[2], timestamp: "0", messageText: "some"),
    Message(senderUser: allUsers[2], recieverUser: allUsers[0], timestamp: "0", messageText: "message"),
    Message(senderUser: allUsers[3], recieverUser: allUsers[0], timestamp: "0", messageText: "comoestas"),
    Message(senderUser: allUsers[0], recieverUser: allUsers[3], timestamp: "0", messageText: "hola"),
    Message(senderUser: allUsers[4], recieverUser: allUsers[0], timestamp: "0", messageText: "wiwiwi"),
    Message(senderUser: allUsers[4], recieverUser: allUsers[0], timestamp: "0", messageText: "iii"),
    Message(senderUser: allUsers[0], recieverUser: allUsers[4], timestamp: "0", messageText: "neeeee")
]

let allNotifications : [Notification] = [
    Notification(recieverUser: allUsers[0], senderUser: allUsers[1], post: allPosts[0]),
    Notification(recieverUser: allUsers[0], senderUser: allUsers[2], post: allPosts[1]),
    Notification(recieverUser: allUsers[0], senderUser: allUsers[3], post: allPosts[2]),
    Notification(recieverUser: allUsers[0], senderUser: allUsers[4], post: allPosts[2]),
    Notification(recieverUser: allUsers[0], senderUser: allUsers[1], post: allPosts[0]),
    Notification(recieverUser: allUsers[0], senderUser: allUsers[0], post: allPosts[1]),
    Notification(recieverUser: allUsers[0], senderUser: allUsers[4], post: allPosts[2])
]

//
//
//class UserStore: ObservableObject {
//    static let shared = UserStore()
//
//    @Published var allUsers: [User] = []
//
//    func fetchUsers() {
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
//
//        URLSession.shared.dataTask(with: url) { data, _, error in
//            if let data = data {
//                do {
//                    let decodedUsers = try JSONDecoder().decode([User].self, from: data)
//                    DispatchQueue.main.async {
//                        self.allUsers = decodedUsers
//                    }
//                } catch {
//                    print("Decoding error:", error)
//                }
//            } else if let error = error {
//                print("Network error:", error)
//            }
//        }.resume()
//    }
//}
//
class PostStore: ObservableObject {
    static let shared = PostStore()

    @Published var allPosts: [Post] = []

    func fetchPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }

        URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data {
                do {
                    let decodedPosts = try JSONDecoder().decode([Post].self, from: data)
                    DispatchQueue.main.async {
                        self.allPosts = decodedPosts
                    }
                } catch {
                    print("Decoding error:", error)
                }
            } else if let error = error {
                print("Network error:", error)
            }
        }.resume()
    }
    
}



