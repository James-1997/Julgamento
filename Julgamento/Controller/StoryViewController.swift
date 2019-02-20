//
//  StoryViewController.swift
//  Julgamento
//
//  Created by Eliza Maria Porto de Carvalho on 20/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var storyText: UILabel!
    
    var históriaSelecionada: Story!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        backgroundImage.image = históriaSelecionada?.image
        
        storyText.text = históriaSelecionada?.titulo
        
    }


   

}
