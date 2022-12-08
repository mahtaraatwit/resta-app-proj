//
//  CheckInView.swift
//  resta
//
//  Created by amenm on 12/1/22.
//

import Foundation
import UIKit

protocol MoodDelegate: AnyObject {
    func moodButtonPressed()
}

protocol MoodTodayDelegate: AnyObject {
    func moodDayButtonPressed()
}
class CheckInView: UIView {
    
    let motivationalQuoteList: [String] = ["Genius is one percent inspiration and ninety-nine percent perspiration.",
 "Difficulties increase the nearer we get to the goal.","Fate is in your hands and no one elses"
    ]
    weak var delegate: MoodDelegate!
    weak var delegateM: MoodTodayDelegate!
    
    lazy var moodDisplay: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 50, y: 300, width: 300, height: 50)
        label.backgroundColor = .white
        //label.layer.cornerRadius = 5
        label.adjustsFontSizeToFitWidth = true
        //label.text = motivationalQuoteList.randomElement()
        //label.font = UIFont(name: "Calibri", size: 5)
        return label
    }()
    lazy var motivationalQuote: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 50, y: 600, width: 300, height: 50)
        label.backgroundColor = .white
        //label.layer.cornerRadius = 5
        label.adjustsFontSizeToFitWidth = true
        label.text = motivationalQuoteList.randomElement()
        //label.font = UIFont(name: "Calibri", size: 5)
        return label
    }()
    
    lazy var moodButton: UIButton = {
        let button = UIButton(type: .custom)
        //button.translatesAutoresizingMaskIntoConstraints = false
        button.frame = CGRect(x: 120, y: 100, width: 150, height: 150)
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.clipsToBounds = true
        button.backgroundColor = .white
        button.isEnabled = true
        button.isUserInteractionEnabled = true
        button.addTarget(self, action: #selector(buttonPress), for: UIControl.Event.touchUpInside)
        let image  = UIImage(systemName: "face.smiling")?.withTintColor(.customBackGroundColor)
        let targetSize = CGSize(width: 150, height: 150)

        let scaledImage = image!.scalePreservingAspectRatio(
            targetSize: targetSize
        )
        button.setImage(scaledImage, for: .normal)
        
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.black.cgColor
        
        
        return button
    }()
    
    override init(frame: CGRect) {
      super.init(frame: frame)
      setupView()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
      fatalError("blah blah")
    }
    
    private func setupView() {
      addSubview(moodDisplay)
      addSubview(motivationalQuote)
      addSubview(moodButton)
      //setupLayout()
    }
    
    @objc func buttonPress() {
        delegate.moodButtonPressed()
    }
    
    @objc func moodButtonpress() {
        delegateM.moodDayButtonPressed()
    }
   
    
     //using this method did not allow me to see the Checkinview
//    private func setupLayout() {
//        self.translatesAutoresizingMaskIntoConstraints = false
//
//    }
    

}
