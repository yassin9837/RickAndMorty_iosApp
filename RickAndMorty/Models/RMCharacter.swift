//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by hq dev on 05/03/2025.
//

import Foundation
struct RMCharacter: Codable{
    let id:Int
    let name: String
    let status: RMCharacterstatus
    let species: String
    let type: String
    let gender: String
    let origin: RMorigin
    let location:RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created:String
       }
