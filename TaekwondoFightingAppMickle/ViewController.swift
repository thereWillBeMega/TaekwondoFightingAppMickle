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
    
    static var opponents : [Opponent] = []
    static var matches : [Match] = []
    static var winRate = 0.0
    static  var defaults = UserDefaults.standard
    static var encoder = JSONEncoder()
    static var decoder = JSONDecoder()

    
    static func save(){
        if let matchEncode = try? self.encoder.encode(AppData.matches){
            defaults.set(matchEncode, forKey: "Matches")
        }
        
        if let opponentEncode = try? self.encoder.encode(AppData.opponents){
            defaults.set(opponentEncode, forKey: "Opponents")
        }

    }
    
    static func getMatches() -> [Match]{
        
        if let theMatches = defaults.data(forKey: "Matches") {
            if let decoded = try? decoder.decode([Match].self, from: theMatches) {
                
                if (decoded.count != 0){
                    return decoded
                }
                
            }
            
        }
        return []
    }
    
    static func getOpponents() -> [Opponent]{
        
        if let theOpponents = defaults.data(forKey: "Opponents") {
            if let decoded = try? decoder.decode([Opponent].self, from: theOpponents) {
                
                if (decoded.count != 0){
                    return decoded
                }
                
            }
            
        }
        return []
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
        AppData.defaults.set([], forKey: "Opponents")
        AppData.defaults.set([], forKey: "Matches")
        if !AppData.getMatches().isEmpty{
            AppData.matches = AppData.getMatches()
        }
        
        if !AppData.getOpponents().isEmpty{
            AppData.opponents = AppData.getOpponents()
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func toRecordAction(_ sender: Any) {
        if AppData.opponents.isEmpty{
            let alert = UIAlertController(title: "Error!", message: "Add Opponents first", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .destructive, handler:     nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            
        }else{
            performSegue(withIdentifier: "homeToRecord", sender: self)
        }
        
    }
    
    
    @IBAction func toHistoryAction(_ sender: Any) {
        performSegue(withIdentifier: "toHistroy", sender: self)
    }
    
    
    @IBAction func toOpponentsAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toOpponents", sender: self)
    }
    
}
