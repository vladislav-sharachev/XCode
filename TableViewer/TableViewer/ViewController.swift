//
//  ViewController.swift
//  TableViewer
//
//  Created by Владислав on 27.09.2020.
//

import UIKit

struct Car {
    let make: String
    let model: String
}

class ViewController: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    
    var dataSource: [Car] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.dataSource = self
        tblView.delegate = self
        loadDataSource()
    }
    
    func loadDataSource() {
        dataSource.append(Car(make: "Tesla", model: "Model S"))
        dataSource.append(Car(make: "Tesla", model: "Model X"))
        dataSource.append(Car(make: "Tesla", model: "Model 3"))
        dataSource.append(Car(make: "Tesla", model: "Roadster"))
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let carCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CarTableViewCell else {
            return UITableViewCell()
        }
        //let car = dataSource[indexPath.row]
        
        //carCell.makeLabel.text = "Make: \(car.make)"
        //carCell.modelLabel.text = "Model: \(car.model)"
        
        //carCell.textLabel?.text = "Make: \(car.make) Model: \(car.model)"
        return carCell
    }
}

