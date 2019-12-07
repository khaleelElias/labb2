//
//  SkillsViewController.swift
//  khaleelLab2
//
//  Created by Khaleel Elias on 2019-12-07.
//  Copyright © 2019 Khaleel Elias. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {

   @IBOutlet weak var animationImageView: UIImageView!
        var animationImages: [UIImage] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            animationImages = [
                UIImage(named: "0"),
                UIImage(named: "1"),
                UIImage(named: "2"),
                UIImage(named: "3"),
                UIImage(named: "4"),
                UIImage(named: "5"),
                UIImage(named: "6"),
                UIImage(named: "7"),
                UIImage(named: "8"),
                UIImage(named: "9"),


                ] as! [UIImage]
            
            animationImageView.animationImages = animationImages
            animationImageView.animationDuration = 0.8
            animationImageView.startAnimating()
            
        }
    }
