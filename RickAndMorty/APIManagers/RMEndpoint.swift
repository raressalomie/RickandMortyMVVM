//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Tiberiu Rares Salomie on 25/2/24.
//

import Foundation

///Represents unique API endpoints
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episo info
    case episode
    
}
