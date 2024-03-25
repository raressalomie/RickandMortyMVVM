//
//  RMGetCharactersResponse.swift
//  RickAndMorty
//
//  Created by Tiberiu Rares Salomie on 4/3/24.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let result: [RMCharacter]
}


