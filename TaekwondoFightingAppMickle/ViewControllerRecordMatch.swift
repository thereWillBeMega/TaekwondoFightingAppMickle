//
//  ViewControllerRecordMatch.swift
//  TaekwondoFightingAppMickle
//
//  Created by PETER MICKLE on 11/4/24.
//

import UIKit

class ViewControllerRecordMatch: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
   
    
    
    
    @IBOutlet weak var pickerOutlet: UIPickerView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after lo
        pickerOutlet.delegate = self
        pickerOutlet.dataSource = self

    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        AppData.opponents.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return AppData.opponents.count
             }
             return 0
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            if component == 0{
                return AppData.opponents[row].name            }
            return ""
        }
    
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         if component == 0{
             AppData.curOpponent = AppData.opponents[row]
           
         }
     }
    
    
    
    @IBAction func majicAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toSelectWin", sender: self)
    }
    
    
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        AppData.opponents.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableViewOutlet2.dequeueReusableCell(withIdentifier: "myCell")
//        cell?.textLabel?.text = AppData.opponents[indexPath.row].name
//        return cell!
//    }
//        
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        AppData.curOpponent = AppData.opponents[indexPath.row]
//        performSegue(withIdentifier: "toSelectWin", sender: self)
//        
//    }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


