//
//  FilmsVC.swift
//  StarTrivia
//
//  Created by Nicholas Coggin on 3/22/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import UIKit

class FilmsVC: UIViewController, PersonProtocol {
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var episodeLbl: UILabel!
    @IBOutlet weak var directorLbl: UILabel!
    @IBOutlet weak var producerLbl: UILabel!
    @IBOutlet weak var releasedLbl: UILabel!
    @IBOutlet weak var crawlTxtBox: UITextView!
    
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func previousBtnTapped(_ sender: Any) {
        setButtonState()
    }
    
    @IBAction func nextBtnTapped(_ sender: Any) {
        setButtonState()
    }
    
    func setButtonState() {
        
    }

}
