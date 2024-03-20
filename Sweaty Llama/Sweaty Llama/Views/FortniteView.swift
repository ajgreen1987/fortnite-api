//
//  ContentView.swift
//  Sweaty Llama
//
//  Created by AJ Green on 10/19/23.
//

import SwiftUI

struct FortniteView: View {
    @StateObject private var viewModel = FortniteViewModel(credentials: "your_creds_here")
    
    var body: some View {
        VStack {
            List(viewModel.items) { item in
                Text(item.name)
            }
        }
        .onAppear {
            Task {
                await viewModel.fetchItems()
            }
        }
    }
}

#Preview {
    FortniteView()
}
