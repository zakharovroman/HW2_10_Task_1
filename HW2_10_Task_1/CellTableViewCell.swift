//
//  CellTableViewCell.swift
//  HW2_10_Task_1
//
//  Created by Роман Захаров on 21.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    @IBOutlet var imageUIImageView: UIImageView!
    @IBOutlet var authorUILabel: UILabel!
    @IBOutlet var widthUILabel: UILabel!
    @IBOutlet var heightUILabel: UILabel!
    
    func configure(with picsum: Picsum) {
        self.authorUILabel.text = "Author: \(picsum.author ?? "No name")"
        self.widthUILabel.text = "Width: \(picsum.width ?? 0)"
        self.heightUILabel.text = "Height: \(picsum.height ?? 0)"
        
    }

}
