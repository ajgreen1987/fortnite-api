//
//  FortniteItems.swift
//  Sweaty Llama
//
//  Created by AJ Green on 10/19/23.
//

import Foundation

struct FortniteItem: Identifiable {
    let id: String
    let name: String
    
    init?(from dictionary: [String: Any]) {
        guard let id = dictionary["id"] as? String,
              let name = dictionary["name"] as? String else {
            return nil
        }
        self.id = id
        self.name = name
    }
}

