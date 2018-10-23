//
//  ViewController.swift
//  EggTimer
//
//  Created by Kakouliadis on 18/10/2018.
//  Copyright © 2018 Kakouliadis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    var timer = Timer()
    
    var time = 210
    
    @objc func descreaseTime() {
        
        if time > 0 {
        
            time = time - 1
        
            LabelChange.text = String(time)
            
        } else {
            
            timer.invalidate()
            
    }
        
}
    @IBOutlet weak var LabelChange: UILabel!
    
    @IBAction func PlayPressed(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.descreaseTime), userInfo: nil, repeats: true)
        
        
    }
    @IBAction func PausePressed(_ sender: Any) {
        
        timer.invalidate()
        
    }
    @IBAction func AddPressed(_ sender: Any) {
        
        time = time + 10
        
        LabelChange.text = String(time)
        
    }
    @IBAction func SubPressed(_ sender: Any) {
        
        if time > 10 {
            
            time = time - 10
            
            LabelChange.text = String(time)
            
        } else {
            
            timer.invalidate()
            
        }
        
    }
    
    @IBAction func ResetPressed(_ sender: Any) {
        
        time = 210
        
        LabelChange.text = String(time)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}

