//
//  ViewController.swift
//  RandomAnswer
//
//  Created by Анастасия Талмазан on 2024-03-27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerButton.layer.cornerRadius = 10
    }

    @IBAction func answerButtonAction(_ sender: Any)
    {
        let answer: Bool = Bool.random()
        answerLabel.text = ""
        
        let delayForAnswer:Double = 1
        let delayForDots:Double = delayForAnswer/4
        for sec in 1...3
        {
            answerLabel.textColor = UIColor(red: CGFloat(242)/CGFloat(255),
                                            green: CGFloat(109)/CGFloat(255),
                                            blue: CGFloat(140)/CGFloat(255),
                                            alpha: 1)
            DispatchQueue.main.asyncAfter(deadline: .now()+delayForDots)
            {
                self.answerLabel.text = String(repeating: ".", count: sec)
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now()+delayForAnswer)
        {
            self.answerLabel.text = answer ? "YES" : "NO"
            self.answerLabel.textColor =  answer ? UIColor(
                red: CGFloat(128)/CGFloat(255),
                green: CGFloat(186)/CGFloat(255),
                blue: CGFloat(152)/CGFloat(255),
                alpha: 1)
            : UIColor(
                red: CGFloat(207)/CGFloat(255),
                green: CGFloat(78)/CGFloat(255),
                blue: CGFloat(102)/CGFloat(255),
                alpha: 1)
        }

        
    }
    
}

