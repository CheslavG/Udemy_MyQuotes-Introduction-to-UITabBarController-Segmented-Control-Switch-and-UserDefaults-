//
//  SettingsViewController.swift
//  MyQuotes
//
//  Created by AP-Cheslau Gerasimovitch on 8/2/17.
//  Copyright © 2017 AP-Cheslau Gerasimovitch. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet var settingsLabel: [UILabel]!
    
    @IBOutlet weak var segmentedTheme: UISegmentedControl!

    @IBOutlet weak var switchBorder: UISwitch!
    
    @IBOutlet weak var stepperFavorite: UIStepper!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = theme
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func segmentedChanged(_ sender: Any) {
        let index = segmentedTheme.selectedSegmentIndex
        if index == 0
        {
            theme = UIColor.black
        }
        else
        {
            theme = UIColor.white
        }
        view.backgroundColor = theme
    }
    
    
    @IBAction func switchChanged(_ sender: Any) {
        if switchBorder.isOn{
            imageBorder = true
        }
        else{
            imageBorder = false
        }
    }
}
