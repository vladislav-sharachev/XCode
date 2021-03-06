//
//  ViewController.swift
//  TheFirstApp
//
//  Created by Владислав on 08.10.2020.
//

import UIKit

class ViewController: UITableViewController {

    var list: [String] = [String]()
    let Url = URL(string: "https://placehold.it/375x150?text=")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func downloadImage(withURL url: URL, forCell cell: UITableViewCell) {
        let url = url.absoluteString
        for i in 1...100 {
            list.append(url + "\(i)")
        }
        self.tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ImagesCell
        let cell = customCell ?? ImagesCell()
        cell.configure(url: list[indexPath.row])
        return cell
    }
}

