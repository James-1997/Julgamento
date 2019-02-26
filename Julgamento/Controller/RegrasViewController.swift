//
//  ViewController.swift
//  Julgamento
//
//  Created by Robson James Junior on 19/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import UIKit

class RegrasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let menuElements: [String] = ["PAPEIS","RODADAS","DECRETO DO JURI","ELEMENTOS ESPECIAIS"]
    
    var selectedTableItem: Int = 0
    
    // MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuElements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell =  tableView.dequeueReusableCell(withIdentifier: "tableViewRules", for: indexPath) as! TableViewCellRules
        
        cell.titleLabel.text = menuElements[indexPath.row]
        
        return cell

    }
    
    func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        
        if (context.nextFocusedIndexPath == nil) {
            print("not brwosinf the table")
            return
        }
        
        //        print(context.nextFocusedIndexPath!.item)
        
        selectedTableItem = context.nextFocusedIndexPath!.item
        
        print(selectedTableItem)
        
        switch menuElements[selectedTableItem]  {
        case "PAPEIS":
            print("PAPEIS")
        case "RODADAS":
            print("RODADAS")
        case "VOTAÇÃO" :
            print("VOTAÇÃO" )
        case "ELEMENTOS ESPECIAIS" :
            print("ELEMENTOS ESPECIAIS" )
        default:
            return
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
}

