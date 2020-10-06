import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgOne: UIImageView!
    @IBOutlet weak var imgTwo: UIImageView!
    @IBOutlet weak var imgThree: UIImageView!
    
    
    let image1 = "https://news.ecoindustry.ru/wp-content/uploads/2020/09/602bb9dacce940ce1eff41ee2fa65231.jpg"
    var image2 = "https://murman.tv/upload/2020/03/25/1766024302.jpg"
    var image3 = "https://ideagid.ru/wp-content/uploads/2017/02/murmansk.jpg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgOne.load(urlString: image1)
        imgTwo.load(urlString: image2)
        imgThree.load(urlString: image3)
        
        imgOne.layer.cornerRadius = 10
        imgTwo.layer.cornerRadius = 10
        imgThree.layer.cornerRadius = 10
    }
    
    @IBAction func openNextPage() {
        guard  let vc = storyboard?.instantiateViewController(identifier: "ImagesController") as? ImagesController else {
            return
        }
        present(vc, animated: true)
    }
    
}

