//
//  DetailViewViewController.swift
//  khaleelLab2
//
//  Created by Khaleel Elias on 2019-12-07.
//  Copyright © 2019 Khaleel Elias. All rights reserved.
//

import UIKit

class DetailViewViewController: UIViewController {

    
    @IBOutlet weak var XPImage: UIImageView!
        @IBOutlet weak var XPTitel: UILabel!
        @IBOutlet weak var XPMessage: UITextView!
        
        var experience: Experience = Experience(imageName: "", titel: "", message: "")
        
        override func viewDidLoad() {
            super.viewDidLoad()
            XPImage.image = UIImage(named: experience.imageName)
            XPTitel.text = experience.titel
            XPMessage.text = experience.message
        }
    }
