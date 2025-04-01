//
//  menuMain.swift
//  Hackaton2025MegaTeam
//
//  Created by CEDAM24 on 31/03/25.
//

import SwiftUI

struct menuMain: View {
    @Binding var window: [String: Int]
    @Binding var colors: [Color]
    
    var body: some View {
        VStack {
            if window["screen1"] == 0 {
                menuSearch(window: $window, colors: $colors)
                CategoriasMain(window: $window, colors: $colors)
            }
            if window["screen1"] == 1 {
                menuSearch(window: $window, colors: $colors)
                menuDrinkList(window: $window, colors: $colors)
            }
            if window["screen1"] == 2 {
                menuSearch(window: $window, colors: $colors)
                menuList(window: $window, colors: $colors)
            }
            if window["screen1"] == 3 {
                menuSearch(window: $window, colors: $colors)
                menuFoofList(window: $window, colors: $colors)
            }
            if window["screen1"] == 4 {
                usuarioMain(window: $window, colors: $colors)
            }
            menuBar(window: $window, colors: $colors)
        }
    }
}

#Preview {
    @Previewable @State var window = ["night": 1, "login": 1, "screen1": 2, "screen2": 0]
    @Previewable @State var colors: [Color] = [
        Color(red: 50/255, green: 50/255, blue: 50/255),
        Color(red: 225/255, green: 225/255, blue: 225/255),
        Color(red: 255/255, green: 77/255, blue: 29/255),
        Color(red: 254/255, green: 205/255, blue: 56/255),
        Color(red: 28/255, green: 240/255, blue: 42/255),
        Color(red: 51/255, green: 159/255, blue: 24/255),
        Color(red: 231/255, green: 16/255, blue: 138/255)
    ]
    menuMain(window: $window, colors: $colors)
}
