//
//  ContentView.swift
//  Shared
//
//  Created by Justin Lange on 15/12/2021.
//

import SwiftUI

// Define a view (ContentView is default)
struct ContentView: View {
    // Define images in array
    let names = ["Image1", "Image2", "Image3"]
    
    // Define column item(s)
    let columns = [
        GridItem(.adaptive(minimum: 250))
    ]
                 
    // Define body (content) of the view
    var body: some View {
        // Navigation View (later to maybe switch between views)
        NavigationView {
            // Scroll View to make content scrollable
            ScrollView {
                // Grid View
                LazyVGrid(columns: columns) {
                    // For each to iterate through items
                    ForEach(names, id: \.self) { name in
                        // Display image with image name "name" from array
                        Image(name)
                            .resizable()
                            .cornerRadius(25)
                            .frame(height: 250)
                            .padding()
                    }
                }
            }.navigationTitle("PhotosApp") // Set navigation title
        }.navigationViewStyle(.stack) // Use full screen space on iPadOS and macOS
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
