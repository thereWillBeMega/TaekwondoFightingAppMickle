//
//  ViewControllerOpponents.swift
//  TaekwondoFightingAppMickle
//
//  Created by PETER MICKLE on 11/8/24.
//

import UIKit

class ViewControllerOpponents: UIViewController {

    
    @IBOutlet weak var nameOutlet: UITextField!
    
    
    @IBOutlet weak var StratigyOutlet: UITextField!
    
    
    @IBOutlet weak var errorOutlet: UILabel!
    
    @IBOutlet weak var CSOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        errorOutlet.isHidden = true
    }
    
    
    
    @IBAction func submitAction(_ sender: UIButton) {
        
        let curName : String = nameOutlet.text ?? ""
        let curStratigy : String = StratigyOutlet.text ?? ""
        let curCS : String = CSOutlet.text ?? ""
        
        if curName != ""{
            if curStratigy != ""{
                if  curCS != ""{
                    AppData.opponents.append(Opponent(name: curName, stratigy: curStratigy, counterStratigy: curCS))
                    AppData.save()
                    performSegue(withIdentifier: "ToOpponentConform", sender: self)
                } else{
                    errorOutlet.text = "Enter a valid coutner stratigy"
                    errorOutlet.isHidden = false
                }
            } else{
                errorOutlet.text = "Enter a valid stratigy"
                errorOutlet.isHidden = false
            }
        } else{
            errorOutlet.text = "Enter a valid name"
            errorOutlet.isHidden = false
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

}
