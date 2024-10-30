//
//  ViewController.swift
//  TaekwondoFightingAppMickle
//
//  Created by PETER MICKLE on 10/28/24.
//

import UIKit


class AppData{
    
    static var opponents : [Opponent] = [Opponent(name: "anti Peter", stratigy: "rushing", counterStratigy: "range")]
    static var matches : [Match] = [Match(won: true, opponent: opponents[1])]

    
}

class ViewController: UIViewController  {
    
    
    @IBOutlet weak var titleOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        titleOutlet.text = "Taekwondo\nSparing"
        
        

        
    }
    
 
    @IBAction func toRecordAction(_ sender: Any) {
    }
    
    
    @IBAction func toHistoryAction(_ sender: Any) {
    }
    
}

