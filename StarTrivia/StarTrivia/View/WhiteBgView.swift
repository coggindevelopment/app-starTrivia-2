//
//  WhiteBgView.swift
//  StarTrivia
//
//  Created by Nicholas Coggin on 3/26/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import UIKit

class WhiteBgView: UIView {
    
    override func awakeFromNib() {
        layer.backgroundColor = WHITE_BG
        layer.cornerRadius = 8
    }
    
}

class WhiteBgButton: UIButton {
    
    override func awakeFromNib() {
        layer.backgroundColor = WHITE_BG
        layer.cornerRadius = 8
    }
    
}
