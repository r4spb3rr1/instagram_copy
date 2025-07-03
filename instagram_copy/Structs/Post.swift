//
//  Post.swift
//  18.06 first project
//
//  Created by magzhan on 20.06.2025.
//
import SwiftUI

struct Post : Identifiable, Codable
{
    let id : Int
    let user : User
    let caption : String
    let timestamp : String
    let number1 = Int.random(in: 100000...999999)
    let number2 = Int.random(in: 100000...999999)
    static var likeCount: Int = 0
    let comments: [Comment]? = nil
    
    var imageUrl: String {
        return "https://dummyimage.com/400x400/\(number1)/\(number2)&text=Post+\(id+2000)"
    }
    
    init(id: Int, user : User, caption : String, timestamp : String)
    {
        self.id = id
        self.user = user
        self.caption = caption
        self.timestamp = timestamp
    }
}
