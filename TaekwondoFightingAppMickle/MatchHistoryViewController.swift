//
//  MatchHistoryViewController.swift
//  TaekwondoFightingAppMickle
//
//  Created by PETER MICKLE on 10/28/24.
//

import UIKit

class MatchHistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    @IBOutlet weak var historyTitleOutlet: UILabel!
    
    
    @IBOutlet weak var winRateOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        historyTitleOutlet.text = "Match\nHistory"
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        AppData.updateWinRate()
        winRateOutlet.text = "Win/Loss ratio: \(AppData.winRate)"
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        AppData.matches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "myCell") as! CrazyCell
        cell.labelOutlet1.text = " Opponent:   \(AppData.matches[indexPath.row].opponent.name)"
        if AppData.matches[indexPath.row].won{
            cell.labelOutlet3.text = "won"
        }else{
            cell.labelOutlet3.text = "lost"
        }
       
        return cell
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

