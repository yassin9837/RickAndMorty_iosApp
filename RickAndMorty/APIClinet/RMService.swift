//
//  RMService.swift
//  RickAndMorty
//
//  Created by hq dev on 06/03/2025.
//

import Foundation
/// Primary API service object Rick and morty data
final class RMService {
    

    /// Shared singleton instance
static let shared = RMService()
    
    /// Privatized construtor
private init(){}
    
    /// Send Rick and Morty API Cell
    /// - Parameters:
    ///   - _request: Request instance
    ///   - completion: Callback With data or error
    public func excute<T: Codable>(_request:RMRequest , expecting type :T.Type, completion: @escaping ( Result<T , Error>) -> Void )
    {
        
    }
    
}
