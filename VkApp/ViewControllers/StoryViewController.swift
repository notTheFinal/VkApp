//
//  StoryViewController.swift
//  VkApp
//
//  Created by Александр on 05.06.2022.
//

import UIKit

class StoryViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var numberOfPic = 1
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchPictire()
        createTimer()
    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {

        let touch = touches.first
        if let location = touch?.location(in: UIScreen.main.focusedView) {
            let halfScreenWidth = UIScreen.main.bounds.width / 2
            if location.x < halfScreenWidth {
                if numberOfPic <= 5 && numberOfPic != 1 {
                    numberOfPic -= 1
                }
                switchPictire()
            } else {
                if numberOfPic >= 1 && numberOfPic != 5 {
                    numberOfPic += 1
                }
                switchPictire()
            }
        }
    }
    
    @IBAction func swipe(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case .left:
            if numberOfPic >= 1 && numberOfPic != 5 {
                numberOfPic += 1
            }
            switchPictire()
        default:
            if numberOfPic <= 5 && numberOfPic != 1 {
                numberOfPic -= 1
            }
            switchPictire()
        }
    }
    
    func switchPictire() {
        switch numberOfPic {
        case 1:
            imageView.image = #imageLiteral(resourceName: "1.jpeg")
            timer.invalidate()
            createTimer()
        case 2:
            imageView.image = #imageLiteral(resourceName: "2.jpeg")
            timer.invalidate()
            createTimer()
        case 3:
            imageView.image = #imageLiteral(resourceName: "3.jpeg")
            timer.invalidate()
            createTimer()
        case 4:
            imageView.image = #imageLiteral(resourceName: "4.jpeg")
            timer.invalidate()
            createTimer()
        default:
            imageView.image = #imageLiteral(resourceName: "5.jpeg")
            timer.invalidate()
            createTimer()
        }
    }
    
    func createTimer() {
        timer = Timer.scheduledTimer(timeInterval: 3,
                                 target: self,
                                 selector: #selector(nextPic),
                                 userInfo: nil,
                                 repeats: false
        )
    }
    
    @objc func nextPic() {
        if numberOfPic >= 1 && numberOfPic != 5 {
            numberOfPic += 1
        }
        switchPictire()
    }

}
