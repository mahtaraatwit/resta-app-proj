//
//  TimerViewController.swift
//  resta
//
//  Created by amenm on 12/1/22.
//

import UIKit
import MagicTimer


class TimerViewController: UIViewController, MagicTimerViewDelegate {

    let timer = MagicTimerView()
    
    let startButton = UIButton()
    
    let endButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let frame = CGRect(x: 120, y: 100, width: 150, height: 150)
        let Bframe = CGRect(x: 150, y: 400, width: 100, height: 50)
        let Eframe = CGRect(x: 150, y: 500, width: 100, height: 50)
        
        
        endButton.frame = Eframe
        startButton.frame = Bframe
        timer.delegate = self
        timer.frame = frame
        
        timer.defaultValue = 1500
        
        timer.mode = .countDown(fromSeconds: 1500)
        
        timer.borderColor = .white
        timer.borderWidth = 1
        timer.cornerRadius = 150/2
        
        timer.textColor = .white
        startButton.layer.cornerRadius = 10
        startButton.setTitleColor(.customBackGroundColor, for: .normal)
        startButton.backgroundColor = .white
        startButton.isEnabled = true
        startButton.setTitle("START", for: .normal)
        
        endButton.layer.cornerRadius = 10
        endButton.setTitleColor(.customBackGroundColor, for: .normal)
        endButton.backgroundColor = .white
        endButton.isEnabled = true
        endButton.setTitle("END", for: .normal)
        
        startButton.addTarget(self, action: #selector(startTimer), for: .touchUpInside)
        endButton.addTarget(self, action: #selector(endTimer), for: .touchUpInside)
        //startButton.
        view.addSubview(timer)
        view.addSubview(startButton)
        view.addSubview(endButton)
       // Begins updates to the timer’s display.
        // Do any additional setup after loading the view.
        view.backgroundColor = .customBackGroundColor
    }
    
   
    @objc func startTimer() {
        timer.startCounting()
    }
    
    @objc func endTimer() {
        timer.stopCounting()
        timer.resetToDefault()
    }
    
    

}

    


