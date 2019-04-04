//
//  ResidentsVC.swift
//  StarTrivia
//
//  Created by Nicholas Coggin on 4/1/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import UIKit

class ResidentsVC: UIViewController, HomeworldProtocol {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var hairColorLbl: UILabel!
    @IBOutlet weak var skinColorLbl: UILabel!
    @IBOutlet weak var eyeColorLbl: UILabel!
    @IBOutlet weak var birthYearLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var homeworld: Homeworld!
    let residentApi = ResidentApi()
    var residents = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        residents = homeworld.residents
        guard let firstResident = residents.first else { return }
        getResident(url: firstResident)
    }
    
    func getResident(url: String) {
        residentApi.getResident(url: url) { (resident) in
            if let resident = resident {
                self.setupView(resident: resident)
            }
        }
    }
    
    func setupView(resident: Resident) {
        nameLbl.text = resident.name
        heightLbl.text = resident.height
        hairColorLbl.text = resident.hairColor
        skinColorLbl.text = resident.skinColor
        eyeColorLbl.text = resident.eyeColor
        birthYearLbl.text = resident.birthYear
        genderLbl.text = resident.gender
    }
    
    @IBAction func previousBtnTapped(_ sender: Any) {
        
    }
    
    @IBAction func nextBtnTapped(_ sender: Any) {
        
    }
    
}


