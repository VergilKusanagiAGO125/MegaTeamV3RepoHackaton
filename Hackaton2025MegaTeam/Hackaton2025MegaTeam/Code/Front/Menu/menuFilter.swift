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
                ForEach (lstOptions, id: \.self) { option in
                    if option != "Filtros" {
                        Button (action: {
                            
                        } ) {
                            ZStack {
                                    Rectangle()
                                        .fill(Color.gray)
                                        .frame(width: 120, height: 50)
                                    Text("\(option)")
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
        .init(red: 50, green: 50, blue: 50),
        .init(red: 225, green: 225, blue: 225),
        .init(red: 255, green: 77, blue: 29),
        .init(red: 254, green: 205, blue: 56),
        .init(red: 28, green: 240, blue: 42),
        .init(red: 51, green: 159, blue: 24),
        .init(red: 231, green: 16, blue: 138)
    ]
    menuFilter(window: $window, colors: $colors)
}
