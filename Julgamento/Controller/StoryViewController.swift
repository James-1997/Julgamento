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
    @IBOutlet weak var storyTitle: UILabel!
    @IBOutlet weak var storyText: UILabel!
    
    var históriaSelecionada: Story = arrayDeEstórias[0]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        backgroundImage.image = históriaSelecionada.image
        
        storyTitle.text = históriaSelecionada.titulo
        storyText.text = históriaSelecionada.história
        
    }



}
