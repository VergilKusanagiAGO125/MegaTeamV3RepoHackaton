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
    
    let lstMenuItems: [[String: String]] = [
        ["name": "Categoria", "icon": "carrot.fill"],
        ["name": "Bebidas", "icon": "cup.and.saucer.fill"],
        ["name": "Inicio", "icon": "house.fill"],
        ["name": "Alimentos", "icon": "fork.knife"],
        ["name": "Perfil", "icon": "person.fill"]
    ]
    
    @State private var selectMenu: Int = 2
    
    var body: some View {
        HStack {
            ForEach(lstMenuItems.indices, id: \.self) { index in
                menuButton(for: index)
            }
        }
        .padding(20)
    }
    
    private func menuButton(for index: Int) -> some View {
        Button(action: {
            window["screen1"] = index
            selectMenu = index
        }) {
            VStack {
                Image(systemName: lstMenuItems[index]["icon"] ?? "")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .foregroundColor(selectMenu == index ? colors[2 + index % colors.count] : .gray)
                
                Text(lstMenuItems[index]["name"] ?? "")
                    .font(.caption)
                    .foregroundColor(selectMenu == index ? colors[2 + index % colors.count] : .gray)
            }
        }
    }
}

#Preview {
    @Previewable @State var window = ["night": 1, "login": 1, "screen1": 0, "screen2": 0]
    @Previewable @State var colors: [Color] = [
        Color(red: 50/255, green: 50/255, blue: 50/255),
        Color(red: 225/255, green: 225/255, blue: 225/255),
        Color(red: 255/255, green: 77/255, blue: 29/255),
        Color(red: 254/255, green: 205/255, blue: 56/255),
        Color(red: 28/255, green: 240/255, blue: 42/255),
        Color(red: 51/255, green: 159/255, blue: 24/255),
        Color(red: 231/255, green: 16/255, blue: 138/255)
    ]
    menuBar(window: $window, colors: $colors)
}
