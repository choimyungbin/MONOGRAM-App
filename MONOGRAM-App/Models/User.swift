//
//  User.swift
//  MONOGRAM-App
//
//  Created by 최명빈 on 2022/07/15.
//

import Foundation

struct User: Codable{
    
    let id: Int
    let login_id: String
    let password: String
    let exp: Int
    let level: Int
    let current_game_room_id: String
}
