import UIKit

class ImagesController: UITableViewController {
    
    var list: [String] = [String]()
    let Url = URL(string: "https://placehold.it/375x150?text=")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadImage(withURL: Url, forCell: ImagesCell())
    }
    
    func downloadImage(withURL url: URL, forCell cell: UITableViewCell) {
        let url = url.absoluteString
        let index = 1
        for _ in 1...100 {
            list.append(url + "\(index)")
        }
        self.tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        gueard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ImagesCell
        cell.configure(url: list[indexPath.row])
        return cell
    }
}
