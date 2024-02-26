//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Tiberiu Rares Salomie on 24/2/24.
//

import Foundation

struct RMEpisode: Codable{
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
