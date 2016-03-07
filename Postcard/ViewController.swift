//
//  ViewController.swift
//  Postcard
//
//  Created by Setu Saurabh on 15/02/16.
//  Copyright © 2016 Setu Saurabh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButtonPressed: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typica lly from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we tap on send button
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor=UIColor.redColor()
        
        enterMessageTextField.text=""
        enterMessageTextField.resignFirstResponder()
        
        mailButtonPressed.setTitle("Mail Sent", forState: UIControlState.Normal )
    }

}

