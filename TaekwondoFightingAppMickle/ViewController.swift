//
//  ViewController.swift
//  TaekwondoFightingAppMickle
//
//  Created by PETER MICKLE on 10/28/24.
//

import UIKit

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

