//
//  User.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/17/24.
//

import Foundation

struct ApiResponse: Decodable {
    var user: User
    var token: String
}

struct User: Decodable, Identifiable {
    var id: String { _id }
    var _id: String
    let username: String
    let name: String
    let email: String
    let location: String?
    let bio: String?
    let website: String?
    var avatarExists: Bool?
    var followers: [String]
    var following: [String]
}
