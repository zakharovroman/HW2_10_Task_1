//
//  NetworkManager.swift
//  HW2_10_Task_1
//
//  Created by Роман Захаров on 22.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
    let url = "https://picsum.photos/v2/list"
    
}
