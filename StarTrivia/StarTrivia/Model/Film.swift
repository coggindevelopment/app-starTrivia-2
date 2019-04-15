//
//  Film.swift
//  StarTrivia
//
//  Created by Nicholas Coggin on 4/15/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import Foundation

struct Film : Codable {
    let title: String
    let episode: Int
    let director: String
    let producer: String
    let releaseDate: String
    let crawl: String
    
    enum CodingKeys: String, CodingKey {
        case title
        case episode = "episode_id"
        case director
        case producer
        case releaseDate = "release_date"
        case crawl = "opening_crawl"
    }
}
