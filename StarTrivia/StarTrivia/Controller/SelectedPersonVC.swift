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
    
    var personApi = PersonApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personApi.getRandomPersonUrlSession { (person) in
            if let person = person {
                print(person.name)
            }
        }
    }
}

