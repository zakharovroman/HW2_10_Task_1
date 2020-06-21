//
//  ListTableViewController.swift
//  HW2_10_Task_1
//
//  Created by Роман Захаров on 21.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    //private let url = NetworkManager.shared.url
    private var picsums: [Picsum] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return picsums.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellTableViewCell

        let picsum = picsums[indexPath.row]
        cell.configure(with: picsum)
        tableView.reloadData()
        return cell
    }
    
    @IBAction func upDateAction(_ sender: UIBarButtonItem) {
        tableView.reloadData()
    }
    
    func fetchData() {
        picsums = Picsum.getList()
    }
    
}
