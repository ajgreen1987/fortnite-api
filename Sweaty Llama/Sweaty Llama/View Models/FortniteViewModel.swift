//
//  FortniteViewModel.swift
//  Sweaty Llama
//
//  Created by AJ Green on 10/19/23.
//

import Foundation
import SwiftUI

class FortniteViewModel: ObservableObject {
    private var api: FortniteAPI?
    
    @Published var items: [FortniteItem] = []
    
    init(credentials: String) {
        do {
            self.api = try FortniteAPI(credentials: credentials)
        } catch {
            print("Failed to initialize API: \(error)")
        }
    }
    
    func fetchItems() async {
        do {
            if let response = try await api?.listItems(),
               let itemsDictionaries = response["items"] as? [[String: Any]] {
                self.items = itemsDictionaries.compactMap(FortniteItem.init)
            }
        } catch {
            print("Failed to fetch items: \(error)")
        }
    }
    
    func fetchRarities() async {
        do {
            if let response = try await api?.getRarities() {
                // Handle the rarities response...
            }
        } catch {
            print("Failed to fetch rarities: \(error)")
        }
    }
}

