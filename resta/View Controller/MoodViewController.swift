//
//  MoodViewController.swift
//  resta
//
//  Created by amenm on 12/4/22.
//

import UIKit



class MoodViewController: UIViewController, MoodChoiceDelegate {
    
    
    var completionHandler: ((Int) -> Int)?
    
    let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
    
    let moodView = MoodView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .customBackGroundColor
        
        self.navigationItem.title = "Choose your mood"
        view.backgroundColor = .customBackGroundColor
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark.app"), style: .plain, target: self, action: #selector(closeSettings))
        self.navigationItem.rightBarButtonItem?.tintColor = .white
        
        view.addSubview(moodView)
        moodView.delegate = self
        moodView.frame = view.frame
        //moodView.backgroundColor = .red
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        self.navigationController?.navigationBar.titleTextAttributes = textAttributes
        
    }
    
    
    
    func addViews() {
        
        view.addSubview(moodView)
        moodView.frame = view.frame
    }
    
    @objc func closeSettings() {
       
        dismiss(animated: true, completion: nil)
    }
    
  
    
    func ChoiceButtonPressed(button: UIButton) {
        let result = completionHandler?(button.tag)
        dismiss(animated: true, completion: nil)
    }
    

}
