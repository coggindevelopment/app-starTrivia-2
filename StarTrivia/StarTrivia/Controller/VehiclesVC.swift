//
//  VehiclesVC.swift
//  
//
//  Created by Nicholas Coggin on 3/22/19.
//

import UIKit

class VehiclesVC: UIViewController, PersonProtocol {
    
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
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        print(person.name)

        // Do any additional setup after loading the view.
    }

    @IBAction func previousBtnTapped(_ sender: Any) {
        
    }
    
    @IBAction func nextBtnTapped(_ sender: Any) {
        
    }
}
