//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Андрей Бородкин on 27.06.2021.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        print("ShouldPerformSegue called")
        if segueSwitch.isOn {return true} else {return false}
    }
    
    

    @IBAction func greenButtonTapped(_ sender: UIButton) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
    
}

