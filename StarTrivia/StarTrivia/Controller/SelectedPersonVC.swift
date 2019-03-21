//
//  SelectedPersonVC.swift
//  StarTrivia
//
//  Created by Nicholas Coggin on 3/7/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import UIKit

class SelectedPersonVC: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var massLbl: UILabel!
    @IBOutlet weak var hairLbl: UILabel!
    @IBOutlet weak var birthYearLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    
    @IBOutlet weak var homeworldBtn: UIButton!
    @IBOutlet weak var vehiclesBtn: UIButton!
    @IBOutlet weak var starshipsBtn: UIButton!
    @IBOutlet weak var filmsBtn: UIButton!
    
    var personApi = PersonApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func RandomBtnTapped(_ sender: Any) {
        let random = Int.random(in: 1 ... 87)
        personApi.getRandomPersonAlamo(id: random) { (person) in
            if let person = person {
                self.nameLbl.text = person.name
                self.heightLbl.text = person.height
                self.massLbl.text = person.mass
                self.hairLbl.text = person.hair
                self.birthYearLbl.text = person.birthYear
                self.genderLbl.text = person.gender
            }
        }
    }
    
    @IBAction func homeworldBtnTapped(_ sender: Any) {
        
    }
    
    @IBAction func vehiclesBtnTapped(_ sender: Any) {
        
    }
    
    @IBAction func starshipsBtnTapped(_ sender: Any) {
        
    }
    
    @IBAction func filmsBtnTapped(_ sender: Any) {
        
    }
}

