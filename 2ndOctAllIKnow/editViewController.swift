//
//  editViewController.swift
//  2ndOctAllIKnow
//
//  Created by francois buisson on 02/10/17.
//  Copyright © 2017 dilipGurjar. All rights reserved.
//

import UIKit

class editViewController: UIViewController {

    @IBOutlet weak var editNameTextFiled: UITextField!
    var editName: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        editNameTextFiled.text = editName

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gesturePage(_ sender: UIButton) {
        print("gestuer button clicked  ")
    }
    
    @IBAction func button(_ sender: UIButton) {
        performSegue(withIdentifier: "segueToGestures", sender: self)
    }
    
   
}
