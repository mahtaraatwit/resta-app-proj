//
//  HomeViewController.swift
//  resta
//
//  Created by amenm on 12/1/22.
//

import UIKit

class HomeViewController: UIViewController, MoodDelegate {
   

   
    
    let checkin = CheckInView()
    //let moodView = MoodViewController()
    let homeSettings =  HomeSettingsViewController()
    let moodControllerVC = MoodViewController()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.isUserInteractionEnabled  = true
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "info.circle.fill"), style: .plain, target: self, action: nil)
        navigationItem.leftBarButtonItem?.tintColor = .white
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gearshape.fill"), style: .plain, target: self, action: #selector(presentSettings))
        navigationItem.rightBarButtonItem?.tintColor = .white
        

        view.backgroundColor = .customBackGroundColor
        APICaller.shared.getMotivationalQuotes { result in
            switch result {
            case.success(let response):
                print(response)
                break
            case.failure(let error):
                break
            }
        }
        
        //moodView.moodView.delegate = self
        
        //let check = CheckInView()
        checkin.delegate = self
        //moodView.delegate = self
        view.addSubview(checkin)
        checkin.frame = view.frame
        
        moodControllerVC.completionHandler = { [self] text in
            print("text in \(text)")
            //checkin.moodButton.isEnabled = false
           
            
            switch text {
                case 1:
                checkin.backgroundColor = .green
                checkin.moodDisplay.text = "Mood today is GOOD "
                case 2:
                checkin.backgroundColor = .red
                checkin.moodDisplay.text = "Mood today is BAD "
                case 3:
                checkin.backgroundColor = .yellow
                checkin.moodDisplay.text = "Mood today is ALRIGHT "
            default:
                break
            }
            
            
            
            
            return text
        }
       // addViews()
        
        
       
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
    
    
    func addViews() {
        checkin.isUserInteractionEnabled = true
        view.addSubview(checkin)
        checkin.frame = view.frame
        checkin.backgroundColor = .customBackGroundColor
    }
    
    @objc func presentSettings() {
        let vc = UINavigationController(rootViewController: homeSettings)
        
        vc.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: UIFont.systemFont(ofSize: 22), NSAttributedString.Key.foregroundColor: UIColor.white]

        
        self.view.window?.rootViewController?.present(vc, animated: true, completion: nil)
    }
    
    @objc func presentExtraInfo() {
        
    }
    
    func moodButtonPressed() {
        print("we hit this")
        let vc = UINavigationController(rootViewController: moodControllerVC)
        
        vc.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: UIFont.systemFont(ofSize: 22), NSAttributedString.Key.foregroundColor: UIColor.white]
        
        
        self.view.window?.rootViewController?.present(vc, animated: true, completion: nil)
    }
    
    
    
    
    
   




}
