//
//  Picsum.swift
//  HW2_10_Task_1
//
//  Created by Роман Захаров on 21.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//
import Foundation

struct Picsum: Decodable {
    let id: String?
    let author: String?
    let width: Int?
    let height: Int?
    let url: String?
    let download_url: String?
    
    static func getList() -> [Picsum] {
        
        let urlShared = NetworkManager.shared.url
        var picsums: [Picsum] = []
        
        guard let url = URL(string: urlShared) else { return picsums }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error { print(error); return }
            guard let data = data else { return }
            
            let decoder = JSONDecoder()
            
            do {
                picsums = try decoder.decode([Picsum].self, from: data)
            } catch let error {
                print(error.localizedDescription)
            }
            
        }.resume()
        
        return picsums
    }
    
}
