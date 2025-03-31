//
//  Lists.swift
//  Hackaton2025MegaTeam
//
//  Created by CEDAM24 on 31/03/25.
//

import SwiftUI

struct ColorList: Identifiable {
    var id = UUID()
    var clrSet: Color = Color.init(red: 0, green: 0, blue: 0)
}

struct TestLists: View {
    var colorsList: [ColorList] = [
        ColorList(clrSet: Color.init(red: 255, green: 77, blue: 29)),
        ColorList(clrSet: Color.init(red: 254, green: 205, blue: 56)),
        ColorList(clrSet: Color.init(red: 28, green: 240, blue: 42)),
        ColorList(clrSet: Color.init(red: 51, green: 159, blue: 24)),
        ColorList(clrSet: Color.init(red: 231, green: 16, blue: 138))
    ]
    
    var body: some View {
        VStack {
            ForEach (colorsList) { color in
                Text("Hola Mundo")
                    .foregroundStyle(color.clrSet)
            }
        }
    }
}

#Preview {
    TestLists()
}
