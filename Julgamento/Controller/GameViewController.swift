//
//  ViewController.swift
//  Julgamento
//
//  Created by Robson James Junior on 19/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    
    
    @IBOutlet weak var playerOne: UIImageView!
    
    
    @IBOutlet weak var playerTwo: UIImageView!
    
    @IBOutlet weak var playerThree: UIImageView!
    
   
    @IBOutlet weak var playerFour: UIImageView!
    
    
    @IBOutlet weak var playerFive: UIImageView!
    
    
    @IBOutlet weak var resumStory: UILabel!
    
    
    @IBOutlet weak var backGroudImage: UIImageView!
    
    
    var históriaSelecionada: Story = arrayDeEstórias[0]
    
    // MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resumStory.text = históriaSelecionada.história
        backGroudImage.image = históriaSelecionada.image
        
    }
    
    
}

