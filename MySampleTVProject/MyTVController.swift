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
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("postCell", forIndexPath: indexPath)
        cell.textLabel?.text = "This is post \(indexPath.row)"
        //cell.textLabel?.text = words[indexPath.row]
        return cell
    }
    
    //MARK:- TableView Delegate
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let alertController = UIAlertController.init(title: "Selected Row", message: "You selected row \(indexPath.row)", preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            //print("Cancel Action")
        }
        let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
            //print("Ok Action")
        }
        alertController.addAction(OKAction)
        alertController.addAction(cancelAction)
        
        self.presentViewController(alertController, animated: true) {
            //print("Presented")
        }
    }
    

}