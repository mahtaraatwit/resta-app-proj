//
//  CalendarViewController.swift
//  resta
//
//  Created by amenm on 12/1/22.
//

import UIKit

class CalendarViewController: UIViewController, FSCalendarDelegate, MoodChoiceDelegate{
    func ChoiceButtonPressed(button: UIButton) {
        print("\(button.tag)")
    }
    
    
    
    var calendar = FSCalendar()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .customBackGroundColor
        calendar.delegate = self
        
       
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        calendar.frame = CGRect(x: 0, y: 100, width: view.frame.size.width, height: view.frame.size.height)
        calendar.tintColor = .white
        calendar.appearance.eventSelectionColor = .white
        calendar.appearance.headerTitleColor = .white
        //calendar.appearance.selectionColor =
        calendar.appearance.weekdayTextColor = .white
        //calendar.appearance.todayColor = .customBackGroundColor
        calendar.appearance.subtitleDefaultColor = .white
        calendar.appearance.titleDefaultColor = .white
        
        //calendar.appearance.
        
        view.addSubview(calendar)
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE MM-dd-YYYY"
        let string = formatter.string(from: date)
        print("\(string)")
    }
}
