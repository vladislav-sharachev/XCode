import UIKit

class ImagesCell: UITableViewCell {
    
    @IBOutlet weak var img: UIImageView!
    
    func configure(url: String) {
        img.layer.cornerRadius = 10
        img.load(urlString: url)
    }
    
}
