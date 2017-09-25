//
//  HomeViewController.swift
//  MyQuotes
//
//  Created by AP-Cheslau Gerasimovitch on 7/31/17.
//  Copyright © 2017 AP-Cheslau Gerasimovitch. All rights reserved.
//

import UIKit

var theme: UIColor = UIColor.black
var imageBorder = false

class HomeViewController: UIViewController {

    
    @IBOutlet weak var quoteImgView: UIImageView!
    
    var quoteArray = ["quote0", "quote1", "quote2", "quote3", "quote4", "quote5", "quote6", "quote7", "quote8"]
    var arrayIndex = 0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = theme
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backClicked(_ sender: Any) {
        if arrayIndex > 0
        {
        arrayIndex -= 1
        let imageName = quoteArray[arrayIndex]
        let quoteImage = UIImage(named:imageName)
        quoteImgView.image = quoteImage
        }
    }
    
    @IBAction func nextClicked(_ sender: Any) {
        if arrayIndex < quoteArray.count-1
        {
            arrayIndex += 1
            
            let imageName = quoteArray[arrayIndex]
            let quoteImage = UIImage(named: imageName)
            quoteImgView.image = quoteImage
        }
    }
    
    @IBAction func favoriteClicked(_ sender: Any) {
        let savingDefaults = UserDefaults.standard
        savingDefaults.set(arrayIndex, forKey: "favorite")
    }
    
    
}
