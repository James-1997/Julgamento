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
    var numJogadores: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(numJogadores!)

        backgroundImage.image = históriaSelecionada.image
        
 //       storyTitle.text = históriaSelecionada.titulo
        storyText.text = históriaSelecionada.história
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let numDeJogadores = numJogadores
        let gameViewController = segue.destination as! GameViewController
        gameViewController.numDeJogadores = numDeJogadores
        
    }
 


}
