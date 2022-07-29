//
//  Rooms.swift
//  MONOGRAM-App
//
//  Created by 최명빈 on 2022/07/15.
//

import Foundation

struct Room: Codable {
    let id: Int
    let code, title, type: String
    let level, maxParticipant: Int
    let createdUserID: String
    let password: String?
    static let allRooms: [Room] = Bundle.main.decode(file: "Rooms.json")
    static let sampleRoom: Room = allRooms[0]
    
    enum CodingKeys: String, CodingKey {
        case id, code, title, type, level
        case maxParticipant = "max_participant"
        case password
        case createdUserID = "created_user_id"
    }
}

//way to decode the data
extension Bundle{
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else{
                fatalError("Could not find \(file) in the project")
    }
    guard let data = try? Data(contentsOf: url) else{
        fatalError("Could not load \(file) in the project")
    }
    
    let decoder = JSONDecoder()
    
    guard let loadedData = try? decoder.decode(T.self, from: data) else{
        fatalError("Could not decode \(file) in the project")
        }
        
        return loadedData
    }
}
