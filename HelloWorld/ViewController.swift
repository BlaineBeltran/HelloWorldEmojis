//
//  ViewController.swift
//  HelloWorld
//
//  Created by Blaine Beltran on 11/10/20.
//  Copyright © 2020 Blaine Beltran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
    }
    
    //@IBAction allows the code to connect with the user interface
    @IBAction func showMessage(sender: UIButton) {
        
        // Initialize the emoji dictionary, since it is never mutated in this simple app
        // We can use "let" instead of "var"
        let emojisDict = ["🤓":"Nerd", "👻":"Ghost", "👾":"Alien", "🤖":"Robot"]
        
        // The sender is button tapped by the user for the emoji icons
        // Here we store the sender in the selectedButton constant
        let selectedButton = sender
        
        // Get the emoji from the title label of the selected button
        if let wordToLookup = selectedButton.titleLabel?.text {
            
             // Get the meaning of the emoji from the dictionary
            let meaning = emojisDict[wordToLookup]
            
            // change the title to the meaning of the emoji selected
            let alertController = UIAlertController(title: "This emoji means...", message: meaning, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            alertController.addAction(UIAlertAction(title: "Read More", style: UIAlertAction.Style.default, handler: nil))
            
            // The "present" is how to display the alert message on the screen with an animation
            present(alertController, animated: true, completion: nil)
            
        }
    }

}

