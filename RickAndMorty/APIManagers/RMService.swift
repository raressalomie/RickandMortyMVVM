//
//  RMService.swift
//  RickAndMorty
//
//  Created by Tiberiu Rares Salomie on 25/2/24.
//

import Foundation

///Primary API Service to get Rick and Morty data
final class RMService {
    ///Shared singleton instance
    static let shared = RMService()
    
    ///Privatized constructor
    private init() {}
    
    ///Send Rick and Morty API Call
    /// - Parameters:
    ///  - request: Request instance
    ///  - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
