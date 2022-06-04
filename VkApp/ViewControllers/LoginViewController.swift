//
//  LoginViewController.swift
//  VkApp
//
//  Created by Александр on 04.06.2022.
//

import UIKit

private var insertPIN = ""
private var indexPIN = 0

class LoginViewController: UIViewController {

    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var questionButton: UIButton!
    @IBOutlet weak var delButton: UIButton!
    
    @IBOutlet weak var stackEnterPINViews: UIStackView!
    @IBOutlet weak var firstEnterView: UIView!
    @IBOutlet weak var secondEnterView: UIView!
    @IBOutlet weak var thirdEnterView: UIView!
    @IBOutlet weak var fourthEnterView: UIView!
    
    override func viewWillLayoutSubviews() {
        oneButton.layer.cornerRadius = oneButton.frame.width / 2
        twoButton.layer.cornerRadius = twoButton.frame.width / 2
        threeButton.layer.cornerRadius = threeButton.frame.width / 2
        fourButton.layer.cornerRadius = fourButton.frame.width / 2
        fiveButton.layer.cornerRadius = fiveButton.frame.width / 2
        sixButton.layer.cornerRadius = sixButton.frame.width / 2
        sevenButton.layer.cornerRadius = sevenButton.frame.width / 2
        eightButton.layer.cornerRadius = eightButton.frame.width / 2
        nineButton.layer.cornerRadius = nineButton.frame.width / 2
        zeroButton.layer.cornerRadius = zeroButton.frame.width / 2
        
        firstEnterView.layer.cornerRadius = firstEnterView.frame.width / 2
        secondEnterView.layer.cornerRadius = secondEnterView.frame.width / 2
        thirdEnterView.layer.cornerRadius = thirdEnterView.frame.width / 2
        fourthEnterView.layer.cornerRadius = fourthEnterView.frame.width / 2
        
        firstEnterView.layer.borderColor = UIColor.white.cgColor
        secondEnterView.layer.borderColor = UIColor.white.cgColor
        thirdEnterView.layer.borderColor = UIColor.white.cgColor
        fourthEnterView.layer.borderColor = UIColor.white.cgColor
        
        firstEnterView.layer.borderWidth = 2
        secondEnterView.layer.borderWidth = 2
        thirdEnterView.layer.borderWidth = 2
        fourthEnterView.layer.borderWidth = 2
    }
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        guard indexPIN <= 3 else {return}
        insertPIN += sender.titleLabel!.text ?? "0"
        stackEnterPINViews.arrangedSubviews[indexPIN].backgroundColor = .white
        indexPIN += 1
        
    }
    
    @IBAction func delButtonPressed() {
        
    }
    
    @IBAction func questionButtonPressed() {
        
    }
    

}
