//
//  LoginViewController.swift
//  VkApp
//
//  Created by Александр on 04.06.2022.
//

import UIKit

private var setPIN = ""
private var insertPIN = ""
private var indexPIN = 0
private var isPINSet = false

class LoginViewController: UIViewController {
    
    @IBOutlet weak var pinLabel: UILabel!
    
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
    @IBOutlet weak var buttonsStack: UIStackView!
    
    @IBOutlet weak var firstEnterView: UIView!
    @IBOutlet weak var secondEnterView: UIView!
    @IBOutlet weak var thirdEnterView: UIView!
    @IBOutlet weak var fourthEnterView: UIView!
    
    override func viewDidLoad() {
        view.isUserInteractionEnabled = true
        view.isMultipleTouchEnabled = true
        oneButton.isPointerInteractionEnabled = true
    }
    
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
    
    private func updatePINViews(_ enter: Bool) {
        if enter == true {
            stackEnterPINViews.arrangedSubviews[indexPIN].backgroundColor = .white
        } else {
            stackEnterPINViews.arrangedSubviews[indexPIN-1].backgroundColor = .systemBlue
            
        }
    }
    
    private func startLogin() {
        isPINSet = true
        pinLabel.text = "Введите пин-код"
        for view in stackEnterPINViews.arrangedSubviews {
            view.backgroundColor = .systemBlue
        }
        indexPIN = 0
        insertPIN = ""
    }
    
    private func checkPIN() {
        if setPIN == insertPIN {
            pinLabel.text = "Верный PIN"
            buttonsStack.isHidden = true
            performSegue(withIdentifier: "showStories", sender: nil)
        } else {
            startLogin()
            let alert = UIAlertController(title: "Ошибка!", message: "Неверный пароль!", preferredStyle: .alert)
            let okBtn = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(okBtn)
            present(alert, animated: true)
        }
    }
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        if !isPINSet {
            setPIN += sender.titleLabel!.text ?? "0"
            updatePINViews(true)
            indexPIN += 1
            if setPIN.count == 4 {
                startLogin()
            }
        } else {
            insertPIN += sender.titleLabel!.text ?? "0"
            updatePINViews(true)
            indexPIN += 1
            if insertPIN.count == 4 {
                checkPIN()
            }
        }
        }
    
    @IBAction func delButtonPressed() {
        guard indexPIN != 0 else {return}
        updatePINViews(false)
        if !isPINSet {
            setPIN.removeLast()
        } else {
            insertPIN.removeLast()
        }
        indexPIN -= 1
    }
    
    @IBAction func questionButtonPressed() {
        let alert = UIAlertController(title: "Привет!", message: "Имеются вопросики?", preferredStyle: .alert)
        let okBtn = UIAlertAction(title: "Вопросов нет", style: .default, handler: nil)
        alert.addAction(okBtn)
        
        present(alert, animated: true)
    }
    

    
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if let touch = touches.first {
//
//            if touch.view == oneButton
//            {
//                print("s")
//            } else {
//                print("f")
//            }
//        }
//    }
//
    
}
