//
//  ListTableViewController.swift
//  HW2_10_Task_1
//
//  Created by Роман Захаров on 21.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    private let url = "https://picsum.photos/v2/list"
    private var picsums: [Picsum] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return picsums.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellTableViewCell

        let picsum = picsums[indexPath.row]
        cell.configure(with: picsum)

        return cell
    }
    
    @IBAction func upDateAction(_ sender: UIBarButtonItem) {
        tableView.reloadData()
    }
    
    func fetchData() {
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error { print(error); return }
            guard let data = data else { return }
            
            let decoder = JSONDecoder()
            
            do {
                self.picsums = try decoder.decode([Picsum].self, from: data)
            } catch let error {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
    
}
