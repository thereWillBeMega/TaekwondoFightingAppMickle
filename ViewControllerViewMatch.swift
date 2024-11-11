//
//  ViewControllerViewMatch.swift
//  TaekwondoFightingAppMickle
//
//  Created by PETER MICKLE on 11/6/24.
//

import UIKit

class ViewControllerViewMatch: UIViewController {
    
    
    @IBOutlet weak var matchWonOrLostOutlet: UILabel!
    
    
    @IBOutlet weak var opponentOutlet: UILabel!
    
    @IBOutlet weak var StratigyOutlet: UILabel!
    
    @IBOutlet weak var CSOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if AppData.curMatch.won{
            matchWonOrLostOutlet.text = "Match Won"
        }else{
            matchWonOrLostOutlet.text = "Match Lost"
        }
        
        opponentOutlet.text = "Opponent: \(AppData.curMatch.opponent.name)"
        StratigyOutlet.text = "Stratigy: \(AppData.curMatch.opponent.stratigy)"
        CSOutlet.text = "Stratigy To Use: \(AppData.curMatch.opponent.counterStratigy)"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
