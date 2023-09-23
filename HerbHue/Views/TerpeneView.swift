//
//  TerpeneView.swift
//  HerbHue
//
//  Created by Shantalia Z on 9/23/23.
//

import SwiftUI
struct TerpeneView: View {
    @State private var terpeneName: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("HerbHue - Terpene Info")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Enter Terpene Name", text: $terpeneName)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .padding([.leading, .trailing], 20)
            
            Button("Search") {
                // Logic for search can be added later
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}

