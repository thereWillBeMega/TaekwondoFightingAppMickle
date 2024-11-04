//
//  ViewControllerRecordMatch.swift
//  TaekwondoFightingAppMickle
//
//  Created by PETER MICKLE on 11/4/24.
//

import UIKit

class ViewControllerRecordMatch: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    
    

    @IBOutlet weak var tableViewOutlet2: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after lo
        tableViewOutlet2.delegate = self
        tableViewOutlet2.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        AppData.opponents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet2.dequeueReusableCell(withIdentifier: "myCell")
        cell?.textLabel?.text = AppData.opponents[indexPath.row].name
        return cell!
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppData.curOpponent = indexPath.row
        performSegue(withIdentifier: "toSelectWin", sender: self)
        
    }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


