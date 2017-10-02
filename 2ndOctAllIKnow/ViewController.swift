//
//  ViewController.swift
//  2ndOctAllIKnow
//
//  Created by francois buisson on 02/10/17.
//  Copyright © 2017 dilipGurjar. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBOutlet weak var nameTextFiled: UITextField!
    var nameText: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextFiled.text = nameText
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func edit(_ sender: UIButton) {
        performSegue(withIdentifier: "segue2", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let data = segue.destination as! editViewController
        data.editName = nameTextFiled.text!
        
    }
    

    // Notification
    @IBAction func Notification(_ sender: UIButton) {
        let context = UNMutableNotificationContent()
            context.title = "New Video"
            context.body = "How to Wache Latest Movie"
            context.sound = UNNotificationSound.default()
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "TimeDone", content: context, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
        
    }
    
    
    // Alert
    @IBAction func Alert(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert", message: "How is your expirince", preferredStyle: .alert)
       
        let Cancle = UIAlertAction(title: "Cancle", style: .destructive) { (UIAlertAction) in
            print("Cancle Button Clicked")
        }
        let save = UIAlertAction(title: "Okay", style: .default) { (UIAlertAction) in
            print("Save Button Clicked")
        }
        
        
        alert.addAction(save)
        alert.addAction(Cancle)
        present(alert, animated: true)
    }
}

