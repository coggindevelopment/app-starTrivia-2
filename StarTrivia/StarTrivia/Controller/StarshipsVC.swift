//
//  StarshipsVC.swift
//  StarTrivia
//
//  Created by Nicholas Coggin on 3/22/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import UIKit

class StarshipsVC: UIViewController, PersonProtocol {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var classLbl: UILabel!
    @IBOutlet weak var modelLbl: UILabel!
    @IBOutlet weak var manufacturerLbl: UILabel!
    @IBOutlet weak var costLbl: UILabel!
    @IBOutlet weak var lengthLbl: UILabel!
    @IBOutlet weak var speedLbl: UILabel!
    @IBOutlet weak var crewLbl: UILabel!
    @IBOutlet weak var passengersLbl: UILabel!
    @IBOutlet weak var capacityLbl: UILabel!
    @IBOutlet weak var consumablesLbl: UILabel!
    @IBOutlet weak var hyperdriveLbl: UILabel!
    
    @IBOutlet weak var previousBtn: FadeEnabledBtn!
    @IBOutlet weak var nextBtn: FadeEnabledBtn!
    @IBOutlet weak var activityIcon: UIActivityIndicatorView!
    
    var person: Person!
    let api = StarshipApi()
    var starships = [String]()
    var currentStarship = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        starships = person.starshipUrls
        nextBtn.isEnabled = starships.count > 1
        previousBtn.isEnabled = false
        guard let firstStarship = starships.first else { return }
        getStarship(url: firstStarship)
    }
    
    func getStarship(url: String) {
        activityIcon.startAnimating()
        api.getStarship(url: url) { (starship) in
            self.activityIcon.stopAnimating()
            if let starship = starship {
                self.setupView(starship: starship)
            }
        }
    }
    
    func setupView(starship: Starship) {
        nameLbl.text = starship.name
        classLbl.text = starship.starshipClass
        modelLbl.text = starship.model
        manufacturerLbl.text = starship.manufacturer
        costLbl.text = starship.cost
        lengthLbl.text = starship.length
        speedLbl.text = starship.speed
        crewLbl.text = starship.crew
        passengersLbl.text = starship.passengers
        capacityLbl.text = starship.capacity
        consumablesLbl.text = starship.consumables
        hyperdriveLbl.text = starship.hyperdrive
    }

    @IBAction func previousBtnTapped(_ sender: Any) {
        currentStarship -= 1
        setButtonState()
    }
    
    @IBAction func nextBtnTapped(_ sender: Any) {
        currentStarship += 1
        setButtonState()
    }
    
    func setButtonState() {
        
        previousBtn.isEnabled = currentStarship == 0 ? false : true
        nextBtn.isEnabled = currentStarship == (starships.count - 1) ? false : true
        
        getStarship(url: starships[currentStarship])
    }
    
}
