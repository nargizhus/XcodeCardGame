//
//  ViewController.swift
//  CardGame
//
//  Created by Nargiz on 8/25/20.
//  Copyright © 2020 nargizhus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Generates this property for me. Name of the property and a data type
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
    @IBAction func dealTapped(_ sender: Any) {
          // 2. Randomize some numbers - by creating a method random(in: ClosedRange<Int>) from the lower range to upper range
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        
// 1. We've accessed the leftImageView to randomly generate the images. Update the image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // Compare the random numbers
        if leftNumber > rightNumber {
            // Left side wins. += takes whatever number is currently inside leftScore and add 1 to it. Increasing that score
            leftScore += 1
            
            // we're gonna update the label
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            
            // Right side wins
            // we're gonna update the label
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else {
            // Tie
        }
        
    }
    
    

}

