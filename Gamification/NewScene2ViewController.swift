//
//  NewScene2ViewController.swift
//  Gamification
//
//  Created by New User on 6/6/17.
//  Copyright © 2017 PENN STATE ABINGTON. All rights reserved.
//

import UIKit

class NewScene2ViewController: UIViewController
{
    @IBOutlet weak var InsertName2: UITextField!
    @IBOutlet weak var InsertDescription: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func InsertName(_ sender: UITextField)
    {
            InsertName2.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        view.endEditing(true)
    }
    
    @IBAction func InsertDescription2(_ sender: UITextField)
    {
            InsertDescription.resignFirstResponder()
    }
    
    @IBAction func btnNext(_ sender: Any)
    {
    
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let gamename = GameName(context: context)
        gamename.name = InsertName2.text!
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
    }		    
}
