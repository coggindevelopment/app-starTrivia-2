//
//  Vehicle.swift
//  StarTrivia
//
//  Created by Nicholas Coggin on 4/5/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import Foundation

struct Vehicle : Codable {
    let name: String
    let vehicleClass: String
    let model: String
    let manufacturer: String
    let cost: String
    let length: String
    let speed: String
    let crew: String
    let passengers: String
    let capacity: String
    let consumables: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case vehicleClass = "vehicle_class"
        case model
        case manufacturer
        case cost = "cost_in_credits"
        case length
        case speed = "max_atmosphering_speed"
        case crew
        case passengers
        case capacity = "cargo_capacity"
        case consumables
    }
}
