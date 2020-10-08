//
//  ImagesCell.swift
//  TheFirstApp
//
//  Created by Владислав on 08.10.2020.
//

import UIKit

class ImagesCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    
    func configure(url: String) {
        img.layer.cornerRadius = 10
        img.load(urlString: url)
    }

}
