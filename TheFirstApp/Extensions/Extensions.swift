//
//  Extension.swift
//  TheFirstApp
//
//  Created by Владислав on 08.10.2020.
//

import Foundation
import UIKit

var imageCaсhe = NSCache<AnyObject, AnyObject>()

extension UIImageView {
    func load(urlString: String) {
        
        if let image = imageCaсhe.object(forKey: urlString as NSString) as? UIImage {
            self.image = image
            return
        }
        
        
        guard let url = URL(string: urlString) else {
            return
        }
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        imageCaсhe.setObject(image, forKey: urlString as NSString)
                        self?.image = image
                    }
                }
            }
        }
    }
}
