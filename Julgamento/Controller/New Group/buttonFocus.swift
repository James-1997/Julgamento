//
//  buttonFocus.swift
//  Julgamento
//
//  Created by Robson James Junior on 28/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import UIKit

class buttonFocus: UIButton {

    func canBecomeFocused() -> Bool {
        return true
    }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        if context.nextFocusedView == self {
            UIView.animate(withDuration: 0.1, animations: {() -> Void in context.nextFocusedView?.transform = CGAffineTransform(scaleX: 1.10, y: 1.10)})
        }
        
        if context.previouslyFocusedView == self {
            UIView.animate(withDuration: 0.1, animations: {() -> Void in context.nextFocusedView?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)})
        }
        
    }
    
    

}
