//
//  ViewController.swift
//  Soundboard
//
//  Created by Matheus Franceschini on 31/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var soundButtonCollection: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
    }

    func configureLayout() {
        let borderColor: CGColor = CGColor(red: 48/255, green: 48/255, blue: 48/255, alpha: 1)
        
        for button in soundButtonCollection {
            button.layer.cornerRadius = 16
            button.layer.borderWidth = 2
            button.layer.borderColor = borderColor
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        print(sender.tag)
    }
    

}

