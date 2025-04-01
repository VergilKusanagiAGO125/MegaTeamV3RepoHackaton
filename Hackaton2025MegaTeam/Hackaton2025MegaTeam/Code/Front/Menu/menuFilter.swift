//
//  menuFilter.swift
//  Hackaton2025MegaTeam
//
//  Created by CEDAM24 on 31/03/25.
//

import SwiftUI

struct menuFilter: View {
    @Binding var window: [String: Int]
    @Binding var colors: [Color]
    
    let lstOptions: [String] = ["Ofertas", "Cerca De Ti", "3B", "Al Dia", "Filtros"]
    let lstFilter: [String] = ["Nombre", "Fecha", "Reciente"]
    @State private var selectFilter: Int = 0
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .firstTextBaseline) {
                ForEach (lstOptions.indices, id: \.self) { index in
                    if lstOptions[index] != "Filtros" {
                        Button (action: {
                            
                        } ) {
                            ZStack {
                                    Rectangle()
                                        .fill(Color.gray)
                                        .frame(width: 120, height: 50)
                                        .foregroundColor(colors[index % colors.count])
                                    Text("\(lstOptions[index])")
                            }
                        }
                    }
                    else {
                        VStack {
                            Picker(selection: $selectFilter, label: Text("Select Colour")) {
                                ForEach(0..<lstFilter.count, id: \.self) {
                                    Text(lstFilter[$0])
                                }
                            }
                        }
                    }
                    
                }
            }
            .padding()
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
    menuFilter(window: $window, colors: $colors)
}
