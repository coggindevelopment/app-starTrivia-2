//
//  FadeEnabledBtn.swift
//  StarTrivia
//
//  Created by Nicholas Coggin on 3/21/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import UIKit

class FadeEnabledBtn : UIButton {
    
    override var isEnabled: Bool {
        didSet {
            if isEnabled {
                UIView.animate(withDuration: 0.2) {
                    self.alpha = 1.0
                }
            } else {
                UIView.animate(withDuration: 0.2) {
                    self.alpha = 0.5
                }
            }
        }
    }
    
}
