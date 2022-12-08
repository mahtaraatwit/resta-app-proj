//
//  CalendarView.swift
//  resta
//
//  Created by amenm on 12/1/22.
//

import Foundation
import UIKit


class CalendarView: UIView {
    //initWithFrame to init view from code
    

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
      backgroundColor = .red
        
    }

    
}
