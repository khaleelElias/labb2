//
//  ExperienceTableViewCell.swift
//  khaleelLab2
//
//  Created by Khaleel Elias on 2019-12-07.
//  Copyright © 2019 Khaleel Elias. All rights reserved.
//

import UIKit

class ExperienceTableViewCell: UITableViewCell {

    @IBOutlet weak var XPImage: UIImageView!
           @IBOutlet weak var XPTitel: UILabel!
           @IBOutlet weak var XPMessage: UILabel!
           
           override func awakeFromNib() {
               super.awakeFromNib()
           }

           override func setSelected(_ selected: Bool, animated: Bool) {
               super.setSelected(selected, animated: animated)
           }

       }
