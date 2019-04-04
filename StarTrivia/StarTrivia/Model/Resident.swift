//
//  Resident.swift
//  StarTrivia
//
//  Created by Nicholas Coggin on 4/1/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import Foundation

struct Resident: Codable {
    let name: String
    let height: String
    let hairColor: String
    let skinColor: String
    let eyeColor: String
    let birthYear: String
    let gender: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case height
        case hairColor = "hair_color"
        case skinColor = "skin_color"
        case eyeColor = "eye_color"
        case birthYear = "birth_year"
        case gender
    }
}
