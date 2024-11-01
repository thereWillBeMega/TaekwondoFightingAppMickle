//
//  ViewController.swift
//  TaekwondoFightingAppMickle
//
//  Created by PETER MICKLE on 10/28/24.
//

import UIKit



class AppData{
    
    static var opponents : [Opponent] = [Opponent(name: "anti Peter", stratigy: "rushing", counterStratigy: "range"),Opponent(name: "bob", stratigy: "win", counterStratigy: "lose")]
    static var matches : [Match] = [Match(won: true, opponent: opponents[0]), Match(won: false, opponent: opponents[1]), Match(won: true, opponent: opponents[0])]
    static var winRate = 0.0
    
    
    static func updateWinRate(){
        for i in AppData.matches{
            if i.won{
                AppData.winRate += 1
            }
        }
        AppData.winRate /= Double(AppData.matches.count)
        
        winRate *= 1000
        winRate = round(winRate)
        winRate /= 1000
    }
        
    
   
    

    
}

class ViewController: UIViewController  {
    
    
    @IBOutlet weak var titleOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        titleOutlet.text = "Taekwondo\nSparing"
        
      
        
        

        
    }
    
 
    @IBAction func toRecordAction(_ sender: Any) {
        performSegue(withIdentifier: "homeToRecord", sender: self)
    }
    
    
    @IBAction func toHistoryAction(_ sender: Any) {
    }
    
}

