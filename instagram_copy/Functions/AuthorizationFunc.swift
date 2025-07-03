//
//  AuthorizationFunc.swift
//  instagram_copy
//
//  Created by magzhan on 02.07.2025.
//

import Foundation

func authorization(username: String, password: String) async -> (Bool, User?)
{
    for user in allUsers{
        if user.username == username && user.password == password{
            return (true, user)
        }
    }
    return (false, nil)
}

