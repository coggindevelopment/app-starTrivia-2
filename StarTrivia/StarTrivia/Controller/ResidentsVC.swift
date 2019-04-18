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
    @IBOutlet weak var activityIcon: UIActivityIndicatorView!
    
    var homeworld: Homeworld!
    let residentApi = ResidentApi()
    var residents = [String]()
    var currentResident = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        residents = homeworld.residents
        nextBtn.isEnabled = residents.count > 1
        previousBtn.isEnabled = false
        guard let firstResident = residents.first else { return }
        getResident(url: firstResident)
    }
    
    func getResident(url: String) {
        activityIcon.startAnimating()
        residentApi.getResident(url: url) { (resident) in
            self.activityIcon.stopAnimating()
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
        currentResident -= 1
        setButtonState()
    }
    
    @IBAction func nextBtnTapped(_ sender: Any) {
        currentResident += 1
        setButtonState()
    }
    
    func setButtonState() {
        
        previousBtn.isEnabled = currentResident == 0 ? false : true
        nextBtn.isEnabled = currentResident == (residents.count - 1) ? false : true
        
        getResident(url: residents[currentResident])
    }
    
}


