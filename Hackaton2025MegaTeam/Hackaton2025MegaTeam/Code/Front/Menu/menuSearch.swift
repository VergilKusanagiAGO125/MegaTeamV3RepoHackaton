//
//  menuSearch.swift
//  Hackaton2025MegaTeam
//
//  Created by CEDAM24 on 31/03/25.
//

import SwiftUI

struct menuSearch: View {
    @Binding var window: [String: Int]
    @Binding var colors: [Color]
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                TextField ("Busqueda", text: .constant(""))
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                Image(systemName: "magnifyingglass")
            }
            .padding(20)
        }
    }
}

#Preview {
    @Previewable @State var window = ["night": 1, "login": 1, "screen1": 0, "screen2": 0]
    @Previewable @State var colors: [Color] = [
        .init(red: 50, green: 50, blue: 50),
        .init(red: 225, green: 225, blue: 225),
        .init(red: 255, green: 77, blue: 29),
        .init(red: 254, green: 205, blue: 56),
        .init(red: 28, green: 240, blue: 42),
        .init(red: 51, green: 159, blue: 24),
        .init(red: 231, green: 16, blue: 138)
    ]
    menuSearch(window: $window, colors: $colors)
}
