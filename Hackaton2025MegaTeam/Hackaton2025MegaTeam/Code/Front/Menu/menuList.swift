//
//  menuList.swift
//  Hackaton2025MegaTeam
//
//  Created by CEDAM24 on 31/03/25.
//

import SwiftUI

struct menuList: View {
    @Binding var window: [String: Int]
    @Binding var colors: [Color]
    
    var body: some View {
        ScrollView (.vertical) {
            VStack(alignment: .center) {
                ForEach (0..<20) { item in
                    HStack {
                        VStack {
                            Rectangle()
                                .frame(width: 150, height: 150)
                                .foregroundColor(.blue)
                            Text("Item \(item)")
                        }
                        .padding(20)
                        Spacer()
                        VStack {
                            Rectangle()
                                .frame(width: 150, height: 150)
                                .foregroundColor(.blue)
                            Text("Item \(item)")
                        }
                        .padding(20)
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
    menuList(window: $window, colors: $colors)
}
