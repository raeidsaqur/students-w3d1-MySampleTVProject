//
//  MyTVController.swift
//  MySampleTVProject
//
//  Created by Raeid Saqur on 2016-05-24.
//  Copyright © 2016 Juthiki. All rights reserved.
//

import Foundation
import UIKit

class MyTVController: UITableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath)
        cell.textLabel?.text = "This is post \(indexPath.row)"
        //cell.textLabel?.text = words[indexPath.row]
        return cell
    }
    
    //MARK:- TableView Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let alertController = UIAlertController.init(title: "Selected Row", message: "You selected row \(indexPath.row)", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            //print("Cancel Action")
        }
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
            //print("Ok Action")
        }
        alertController.addAction(OKAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true) {
            //print("Presented")
        }
    }
    

}
