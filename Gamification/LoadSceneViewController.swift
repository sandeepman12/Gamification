//
//  LoadSceneViewController.swift
//  Gamification
//
//  Created by New User on 6/6/17.
//  Copyright © 2017 PENN STATE ABINGTON. All rights reserved.
//

import UIKit

class LoadSceneViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{

    @IBOutlet weak var LoadTableView: UITableView!
    
    var namegame : [GameName] = []
    override func viewDidLoad()
    {
        super.viewDidLoad()
        LoadTableView.dataSource = self
        LoadTableView.delegate = self

        // Do any additional setup after loading the view.

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell()
        
        let gamenames = namegame[indexPath.row]
        
        cell.textLabel?.text = gamenames.name!
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return namegame.count
    }

    func getData()
    {
        (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
             namegame = try! connect.fetch(GameName.fetchRequest())
        }
        catch {
            print("Failed Fetching")
        }
    }
    
    
    
    
    
    
    
}
