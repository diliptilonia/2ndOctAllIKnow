//
//  GestureViewController.swift
//  2ndOctAllIKnow
//
//  Created by francois buisson on 02/10/17.
//  Copyright © 2017 dilipGurjar. All rights reserved.
//

import UIKit

class GestureViewController: UIViewController {

    @IBOutlet weak var pinchView: UIView!
    @IBOutlet weak var swipeView: UIView!
    @IBOutlet weak var longPressView: UIView!
    @IBOutlet weak var tapView: UIView!
    @IBOutlet weak var rotationView: UIView!
    @IBOutlet weak var panView: UIView!
    
    @IBOutlet weak var currentGestureStates: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // All Gestures
        
        
        
      
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(longPressHandler(gesture:)))
            longPressView.addGestureRecognizer(longPress)
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(pinchHandler(gesture:)))
            pinchView.addGestureRecognizer(pinch)

    }
    
    // MARK: Gestures handler Methods
    // Tap
    
    
    @objc func longPressHandler(gesture: UILongPressGestureRecognizer) {
        if gesture.state == UIGestureRecognizerState.began {
            currentGestureStates.text = "Long press Gesture"
            print("it is just commite testing")
        }
    }
    
    @objc func pinchHandler(gesture: UIPinchGestureRecognizer) {
        currentGestureStates.text = "Pinch Gesture"
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
