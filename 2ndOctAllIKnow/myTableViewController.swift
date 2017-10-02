//
//  myTableViewController.swift
//  2ndOctAllIKnow
//
//  Created by francois buisson on 02/10/17.
//  Copyright © 2017 dilipGurjar. All rights reserved.
//

import UIKit

class myTableViewController: UITableViewController {
    
    var nameArray = ["Papa", "mummy", "Ajay", "deepak", "dilip"]
    var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://api.fixer.io/latest")
        let task = URLSession.shared.dataTask(with: url!) { (data, responce, error) in
            if (error != nil) {
                print("Error in Error part")
            } else {
                if let content = data {
                    do {
                        let myJson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        if let rates = myJson["rates"] as? NSDictionary {
                            print(rates)
                        }
                    } catch {
                        print("error in do catch part")
                    }
                }
            }
        }
        task.resume()
        

       
    }

   

   

    

  
   
  
}


extension myTableViewController {
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Contacts"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = nameArray[indexPath.row]
        return cell
    }
    
    
    // Delegates
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            nameArray.remove(at: indexPath.row)
        } else if editingStyle == .insert {
            print("plz do something to insert data in nameArray")
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
        performSegue(withIdentifier: "segue1", sender: (Any).self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let data = segue.destination as! ViewController
            data.nameText = nameArray[index]
    }
}


































