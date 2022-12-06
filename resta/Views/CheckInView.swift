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

class CheckInView: UIView {
    
    weak var delegate: MoodDelegate!
    
    
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
      addSubview(moodButton)
      //setupLayout()
    }
    
    @objc func buttonPress() {
        delegate.moodButtonPressed()
    }
   
    
     //using this method did not allow me to see the Checkinview
//    private func setupLayout() {
//        self.translatesAutoresizingMaskIntoConstraints = false
//
//    }
    

}
