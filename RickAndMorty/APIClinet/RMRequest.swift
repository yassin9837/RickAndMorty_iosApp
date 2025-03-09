//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by hq dev on 06/03/2025.
//

import Foundation
/// Object thet represents a single API Call
final class RMRequest {
    
    //https://rickandmortyapi.com/api/character/2
    
    
    /// constants API
 private struct constants: Codable{
        static let bascurl = "https://rickandmortyapi.com/api"
    }

    /// Desired endpoint
    private let endpoint: RMEndpoint
    ///  Paht components for API , if any
    private let pahtcomponents: Set<String>
    ///  Query aguments for API ,if any
    private let queryparameters: [URLQueryItem]
   
    

    /// Conslructed url for the api request in string fomat
private var urlstring:String {
        var string = constants.bascurl
        string += "/"
        string += endpoint.rawValue
        
        if !pahtcomponents.isEmpty{
            pahtcomponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryparameters.isEmpty {
            string += "?"
            let argument = queryparameters.compactMap({
                guard let value = $0.value else {return nil}
                return"\($0.name)\(value)"
            }).joined(separator: "&")
            string += argument
            
        }
        return string
      
        
       
        
    }
    
    /// Computed 7 constructed API url
    public var url: URL? {
        return URL(string: urlstring)
        
    }

    /// Desired http method
    public let httpmethod = "GET"
    
    
    //  MARK- Public
    /// Construct request:
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pahtcomponents:collecion of path parameters
    ///   - queryparameters: collecion of query parameters
     public init(endpoint: RMEndpoint, pahtcomponents: Set<String> = [], queryparameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pahtcomponents = pahtcomponents
        self.queryparameters = queryparameters
    }
    
}
    

