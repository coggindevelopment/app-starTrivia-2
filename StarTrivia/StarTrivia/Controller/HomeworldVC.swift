//
//  HomeworldVC.swift
//  StarTrivia
//
//  Created by Nicholas Coggin on 3/22/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import UIKit

class HomeworldVC: UIViewController, PersonProtocol {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var climateLbl: UILabel!
    @IBOutlet weak var terrainLbl: UILabel!
    @IBOutlet weak var populationLbl: UILabel!
    
    @IBOutlet weak var residentsBtn: UIButton!
    @IBOutlet weak var filmsBtn: UIButton!
    
    var person: Person!
    let homeworldApi = HomeworldApi()
    var homeworld: Homeworld!

    override func viewDidLoad() {
        super.viewDidLoad()
        homeworldApi.getHomeworld(url: person.homeworldUrl) { (homeworld) in
            if let homeworld = homeworld {
                self.setupUi(homeworld: homeworld)
                self.homeworld = homeworld
            }
        }
    }
    
    func setupUi(homeworld: Homeworld) {
        nameLbl.text = homeworld.name
        climateLbl.text = homeworld.climate
        terrainLbl.text = homeworld.terrain
        populationLbl.text = homeworld.population
        
        residentsBtn.isEnabled = !homeworld.residents.isEmpty
        filmsBtn.isEnabled = !homeworld.films.isEmpty
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if var destination = segue.destination as? HomeworldProtocol {
            destination.homeworld = homeworld
        }
    }

}

protocol HomeworldProtocol {
    var homeworld: Homeworld! {get set}
}
