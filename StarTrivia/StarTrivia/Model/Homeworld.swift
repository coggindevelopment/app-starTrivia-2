//
//  Homeworld.swift
//  StarTrivia
//
//  Created by Nicholas Coggin on 3/26/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import Foundation

struct Homeworld: Codable {
    let name: String
    let climate: String
    let terrain: String
    let population: String
    let residents: [String]
    let films: [String]
}
