//
//  usuarioPrev.swift
//  Hackaton2025MegaTeam
//
//  Created by CEDAM24 on 01/04/25.
//

import SwiftUI

struct usuarioOptionPreview: View {
    var name: String = "Option Preview"
    var icon: String = "questionmark.app.fill"
    var colorBG: Color = .gray
    var colorNameIcon: Color = .black
    var action: () -> Void = { }
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 10) {
                Image(systemName: icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .foregroundStyle(colorNameIcon)
                
                Text(name)
                    .font(.system(size: 14, weight: .medium))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(colorNameIcon)
            }
            .frame(width: 160, height: 160)
            .background(colorBG)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
        }
    }
}

#Preview {
    usuarioOptionPreview()
}
