//
//  menuBar.swift
//  Hackaton2025MegaTeam
//
//  Created by CEDAM24 on 31/03/25.
//

import SwiftUI

struct menuBar: View {
    @Binding var window: [String: Int]
    @Binding var colors: [Color]
    
    let lstIconBar: [String] = ["carrot.fill", "cup.and.heat.waves.fill", "house.fill", "fork.knife.circle.fill", "person.fill"]
    let lstNameBar: [String] = ["Categorias", "Bebidas", "Inicio", "Alimentos", "Perfil"]
    
    var body: some View {
        VStack (alignment: .trailing)  {
            HStack {
                ForEach (0..<lstNameBar.count) { index in
                    Button (action: {
                        window["screen1"] = index
                    } ) {
                        VStack {
                            Image(systemName: "\(lstIconBar[index])")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("\(lstNameBar[index])")
                        }
                    }
                }
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
    menuBar(window: $window, colors: $colors)
}
