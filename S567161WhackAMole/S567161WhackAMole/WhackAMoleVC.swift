//
//  ViewController.swift
//  S567161WhackAMole
//
//  Created by S567161 on 2/11/24.
//

import UIKit
import Lottie

class WhackAMoleVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        borders(to: self.timerSV)
        borders(to: self.highScoreSV)
        borders(to: self.scoreSV)
        gameBtnCLCTN.forEach{btn in
            borders(to: btn)}
    }

    @IBOutlet weak var timerLBL: UILabel!
    
    @IBOutlet weak var timerSV: UIStackView!
    @IBOutlet weak var highScoreLBL: UILabel!
    @IBOutlet weak var scoreLBL: UILabel!
    
    @IBOutlet weak var highScoreSV: UIStackView!
    @IBOutlet weak var startBTN: UIButton!
    
    @IBOutlet weak var scoreSV: UIStackView!
    @IBOutlet var gameBtnCLCTN: [UIButton]!
    
    @IBOutlet weak var launchLAV: LottieAnimationView!{
        didSet{
            launchLAV.loopMode = .playOnce
            launchLAV.animationSpeed=1.0
            launchLAV.play { [weak self] _ in
                UIViewPropertyAnimator.runningPropertyAnimator(
                    withDuration: 1.0, delay: 0.0, options: [.curveEaseInOut]) {
                        self?.launchLAV.alpha = 0.0
                    }
            }
        }
        }
    
    
    @IBAction func onClickGameBTN(_ sender: UIButton) {
    }
    
    @IBAction func onStart(_ sender: UIButton) {
    }
    
    @IBAction func onReset(_ sender: UIButton) {
    }
    
    private func initialUI(){
        startBTN.isUserInteractionEnabled = true
    }
    private func borders(to ele: UIView){
        ele.layer.cornerRadius = 5.0
        ele.layer.borderWidth = 2.0
        ele.layer.borderColor = UIColor.black.cgColor
        
    }
    
    
    
    
    
    
    
}

