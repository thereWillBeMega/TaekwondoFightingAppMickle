//
//  ViewControllerSelectWin.swift
//  TaekwondoFightingAppMickle
//
//  Created by PETER MICKLE on 11/4/24.
//

import UIKit

class ViewControllerSelectWin: UIViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func winAction(_ sender: Any) {
        AppData.matches.append(Match(won: true, opponent: AppData.curOpponent))
        performSegue(withIdentifier: "toMatchRecorded", sender: self)
        AppData.save()
        
    }
    
    
    @IBAction func loseAction(_ sender: Any) {
        AppData.matches.append(Match(won: false, opponent: AppData.curOpponent))
        performSegue(withIdentifier: "toMatchRecorded", sender: self)
        AppData.save()
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
