//
//  MoodView.swift
//  resta
//
//  Created by amenm on 12/4/22.
//

import Foundation

import UIKit

protocol MoodChoiceDelegate: AnyObject {
    func ChoiceButtonPressed(button: UIButton)
}

class MoodView: UIView {
    //initWithFrame to init view from code
    weak var delegate: MoodChoiceDelegate!
 
    lazy var stackView: UIStackView = {
        let verticalStack = UIStackView()
        verticalStack.axis = .vertical
        verticalStack.distribution = .fillEqually
        verticalStack.spacing = 20
        verticalStack.translatesAutoresizingMaskIntoConstraints = false
        return verticalStack
    }()
    
    lazy var goodButton: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 1
        //button.frame = CGRect(x: 120, y: 100, width: 150, height: 150)
        button.backgroundColor = .green
        button.isEnabled = true
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.setTitle("GOOD", for: .normal)
        button.titleLabel?.textColor = .white
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonPress(button:)), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    lazy var badButton: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 2
        //button.frame = CGRect(x: 120, y: 100, width: 150, height: 150)
        button.backgroundColor = .red
        button.isEnabled = true
        button.isUserInteractionEnabled = true
        button.clipsToBounds = true
        button.setTitle("BAD", for: .normal)
        button.titleLabel?.textColor = .white
        button.addTarget(self, action: #selector(buttonPress(button:)), for: UIControl.Event.touchUpInside)
        button.layer.cornerRadius = 10
        return button
    }()
    
    lazy var alrightButton: UIButton = {
        let button = UIButton(type: .custom)
        button.tag = 3
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .mellowyellow
        button.clipsToBounds = true
        button.isEnabled = true
        button.isUserInteractionEnabled = true
        button.setTitle("ALRIGHT", for: .normal)
        button.titleLabel?.textColor = .white
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonPress(button:)), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    
    
    override init(frame: CGRect) {
      super.init(frame: frame)
      setupView()
    }
    
    //initWithCode to init view from xib or storyboard
    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
      setupView()
    }
    
    //common func to init our view
    private func setupView() {
        //backgroundColor = .customBackGroundColor
        addButtonsToStackView()
      
    }
    
    private func addButtonsToStackView() {
        stackView.isUserInteractionEnabled = true
        addSubview(stackView)
        stackView.frame = frame
        stackView.backgroundColor = .clear
        stackView.addArrangedSubview(goodButton)
       stackView.addArrangedSubview(badButton)
       stackView.addArrangedSubview(alrightButton)
        setStackViewConstraints()
    }
    
    private func setStackViewConstraints() {
        
        stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 60).isActive = true
        stackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -60).isActive = true
        stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true
        
    }
    
    
    @objc func buttonPress(button: UIButton) {
        if let delegate = self.delegate {
            delegate.ChoiceButtonPressed(button: button)
        }
       
    }

    
}
