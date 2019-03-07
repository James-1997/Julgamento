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
    @IBOutlet weak var storyIdLabel: UILabel!
    
    
    
    var históriaSelecionada: Story = arrayDeEstórias[0]
    var numJogadores: Int?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(numJogadores!)

        backgroundImage.image = históriaSelecionada.image
        
 //       storyTitle.text = históriaSelecionada.titulo
        storyText.text = históriaSelecionada.história
        
        storyIdLabel.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        storyIdLabel.shadowOffset =  CGSize(width: 4, height: 4)
        storyIdLabel.layer.shadowRadius = 6
        storyIdLabel.layer.shadowOpacity = -3
        
        //515255
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let numDeJogadores = numJogadores
        let gameViewController = segue.destination as! GameViewController
        gameViewController.numDeJogadores = numDeJogadores
        
    }
 


}
