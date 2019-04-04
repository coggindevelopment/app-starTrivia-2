//
//  VehiclesVC.swift
//  
//
//  Created by Nicholas Coggin on 3/22/19.
//

import UIKit

class VehiclesVC: UIViewController, PersonProtocol {
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        print(person.name)

        // Do any additional setup after loading the view.
    }

}
