//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by hq dev on 06/03/2025.
//

import Foundation


/// Represents uinque API endpoint
@frozen enum RMEndpoint: String{
    
    /// Endpoint to get character info
case character
    /// Endpoint to get episode info
case episode
    /// Endpoint to get Locatin info
case Location
    
    
}
