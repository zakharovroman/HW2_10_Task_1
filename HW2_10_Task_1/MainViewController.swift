//
//  ViewController.swift
//  HW2_10_Task_1
//
//  Created by Роман Захаров on 21.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - IB Action
    @IBAction func fetchDataActionButton(_ sender: UIButton) {
        performSegue(withIdentifier: "listSegue", sender: nil)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let listVC = segue.destination as! ListTableViewController
        listVC.fetchData()
    }
}

