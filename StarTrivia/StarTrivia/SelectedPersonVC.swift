//
//  SelectedPersonVC.swift
//  StarTrivia
//
//  Created by Nicholas Coggin on 3/7/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import UIKit

class SelectedPersonVC: UIViewController {

    @IBOutlet weak var stackBg: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackBg.layer.cornerRadius = 10
    }
}

