//
//  ViewController.swift
//  TaekwondoFightingAppMickle
//
//  Created by PETER MICKLE on 10/28/24.
//

import UIKit



class AppData{
    
    static var curOpponent = opponents[0]
    static var curMatch = matches[0]
    
    static var opponents : [Opponent] = [Opponent(name: "anti Peter", stratigy: "rushing", counterStratigy: "range"),Opponent(name: "bob", stratigy: "win", counterStratigy: "lose"),Opponent(name: "matthew", stratigy: "short", counterStratigy: "be tall lol")]
    static var matches : [Match] = []
    static var winRate = 0.0
    static  var defaults = UserDefaults.standard
    static var encoder = JSONEncoder()
    static var decoder = JSONDecoder()

    
    static func save(){
        defaults.set(AppData.matches, forKey: "Matches")
        defaults.set(AppData.opponents, forKey: "Opponents")

    }
    
    
    static func updateWinRate(){
        
        AppData.winRate = 0
        
        if !AppData.matches.isEmpty{
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
        
    
   
    

    
}

class ViewController: UIViewController  {
    
    
    @IBOutlet weak var titleOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        titleOutlet.text = "Taekwondo\nSparing"
        
        if AppData.defaults.object(forKey: "Matches") as? [Match] != nil{
            AppData.matches = AppData.defaults.object(forKey: "Matches") as! [Match]
            
            
            
            
            
            
        }
        

        
        
    }
    
    
    
    
    
    
    
    
    
    @IBAction func toRecordAction(_ sender: Any) {
        performSegue(withIdentifier: "homeToRecord", sender: self)
    }
    
    
    @IBAction func toHistoryAction(_ sender: Any) {
    }
    
    
}
