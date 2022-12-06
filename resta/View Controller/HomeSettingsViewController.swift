//
//  HomeSettingsViewController.swift
//  resta
//
//  Created by amenm on 12/4/22.
//

import UIKit

class HomeSettingsViewController: UIViewController {

//    let attributedWithTextColor: NSAttributedString = "Settings".attributedStringWithColor(["Settings"], color: .white)
    let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
    let settingsView = SettingsView(frame: .zero)
    let settingsInfo = ["App name: " + AppInfo.init().appName,"App" + AppInfo.init().developer, "Build version: " + AppInfo.init().build, "IOS Version: " + AppInfo.init().minimumOSVersion]
    let tableView = UITableView(frame: .zero, style: .insetGrouped)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
      
        self.navigationItem.title = "Settings"
        //self.navigationController?.navigationBar.prefersLargeTitles = true
        //self.navigationItem.title = "Settings"
        view.backgroundColor = .customBackGroundColor
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark.app"), style: .plain, target: self, action: #selector(closeSettings))
        self.navigationItem.rightBarButtonItem?.tintColor = .white
        //vc.isToolbarHidden = false
        view.backgroundColor = .customBackGroundColor
        tableView.delegate = self
        tableView.dataSource = self
        
        setupSettingsView()
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        self.navigationController?.navigationBar.titleTextAttributes = textAttributes
        
    }
    
    
    
    @objc func closeSettings() {
        
        dismiss(animated: true, completion: nil)
    }
    
    func setupSettingsView() {
        view.addSubview(settingsView)
        //settingsView.translatesAutoresizingMaskIntoConstraints = false
        settingsView.frame = view.frame
        settingsView.backgroundColor = .customBackGroundColor
        //settingsView.anchor(leading: view.leadingAnchor, trailing: view.trailingAnchor, top: view.topAnchor, bot: view.bottomAnchor, padding: .init(top: 80, left: 40, bottom: -40, right: -40))
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        setupTableView()
    }
    func setupTableView() {
        settingsView.addSubview(tableView)
        tableView.backgroundColor = .customBackGroundColor
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.anchor(leading: settingsView.leadingAnchor, trailing: settingsView.trailingAnchor, top: settingsView.topAnchor, bot: settingsView.bottomAnchor, padding: .init(top: 100, left: 40, bottom: -40, right: -40))
        
        
    }
    
}

extension HomeSettingsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionV = UIView.init(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 48) )
        let titleLbl = UILabel.init(frame: CGRect(x: 0, y: 24, width: tableView.frame.width-100, height: 20) )
        titleLbl.text = "App Information: "
        titleLbl.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.medium)
        titleLbl.textColor = .white
        sectionV.backgroundColor = .clear
        sectionV.addSubview(titleLbl)
        
        return sectionV
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.backgroundColor = .customBackGroundColor
            cell.textLabel?.text = settingsInfo[indexPath.row]
            cell.textLabel?.textColor = .white
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    
}
