//
//  NewScene2ViewController.swift
//  Gamification
//
//  Created by New User on 6/6/17.
//  Copyright © 2017 PENN STATE ABINGTON. All rights reserved.
//

import UIKit

class NewScene2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var InsertName2: UITextField!
    
    
    @IBAction func InsertName(_ sender: UITextField) {
            InsertName2.resignFirstResponder()
        }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    @IBOutlet weak var InsertDescription: UITextField!
    
    
    @IBAction func InsertDescription2(_ sender: UITextField) {
            InsertDescription.resignFirstResponder()
    }
    
    
    
    
    
    
    
    
    
    
    
}
