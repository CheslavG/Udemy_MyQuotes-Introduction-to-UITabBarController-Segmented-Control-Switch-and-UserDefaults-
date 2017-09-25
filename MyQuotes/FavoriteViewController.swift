//
//  FavoriteViewController.swift
//  MyQuotes
//
//  Created by AP-Cheslau Gerasimovitch on 8/2/17.
//  Copyright © 2017 AP-Cheslau Gerasimovitch. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController {

    @IBOutlet weak var favoriteImgView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let savingDefaults = UserDefaults.standard
        let indexSaved = savingDefaults.integer(forKey: "favorite")
        let imageName = "quote\(indexSaved)"
        
        let image = UIImage(named:imageName)
        favoriteImgView.image = image
        view.backgroundColor = theme
        //favoriteImgView.
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            }
   

}
