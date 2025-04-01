//
//  Historial.swift
//  Hackaton2025MegaTeam
//
//  Created by CEDAM24 on 31/03/25.
//

import SwiftUI
import MapKit

struct usuarioMain: View {
    @Binding var window: [String: Int]
    @Binding var colors: [Color]
    
    @State private var coordinateRegion: MKCoordinateRegion = .init(
        center: CLLocationCoordinate2D(latitude: DefaultRegion.latitude, longitude: DefaultRegion.longitude),
        span: .init(latitudeDelta: Span.delta, longitudeDelta: Span.delta)
    )
    
    @State private var selectedOption: String? = nil
    @State private var showDetail = false
    
    private struct DefaultRegion {
        static let latitude = 19.48344215
        static let longitude = -99.2458080208569
    }

    private struct Span {
        static let delta = 0.1
    }
    
    private let lstIconsProfile: [[String: String]] = [
        ["name": "Preferencias", "icon": "heart.fill", "data": "Comida 1,Comida 2,Comida 3,Comida 4"],
        ["name": "Alergias", "icon": "exclamationmark.triangle.fill", "data": "Alergia 1,Alergia 2,Alergia 3"],
        ["name": "Menú del Día", "icon": "fork.knife", "data": "Menú 1,Menú 2,Menú 3,Menú 4"],
        ["name": "Poco Pedidos", "icon": "tray.fill", "data": "Plato 1,Plato 2,Plato 3"],
        ["name": "Historial", "icon": "clock.fill", "data": "Pedido 1,Pedido 2,Pedido 3"],
        ["name": "Ubicación", "icon": "map.fill", "data": ""]
    ]
    
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                VStack {
                    HStack {
                        Image("furinaProfile")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .cornerRadius(10)
                        
                        VStack {
                            ZStack {
                                Rectangle()
                                    .fill(Color.gray.opacity(0.3))
                                    .frame(width: 240, height: 40)
                                    .cornerRadius(10)
                                Text("Usuario: Furina")
                            }
                            ZStack {
                                Rectangle()
                                    .fill(Color.gray.opacity(0.3))
                                    .frame(width: 240, height: 40)
                                    .cornerRadius(10)
                                Text("Afiliacion: UNAM")
                            }
                            ZStack {
                                Rectangle()
                                    .fill(Color.gray.opacity(0.3))
                                    .frame(width: 240, height: 40)
                                    .cornerRadius(10)
                                Text("FES Acatlan")
                            }
                        }
                    }
                    .padding(.bottom, 20)
                    
                    HStack {
                        usuarioOptionPreview(
                            name: lstIconsProfile[0]["name"]!,
                            icon: lstIconsProfile[0]["icon"]!,
                            colorBG: Color(red: 215/255, green: 215/255, blue: 215/255),
                            colorNameIcon: Color(red: 215/255, green: 2/255, blue: 43/255),
                            action: { showOptionDetail(index: 0) }
                        )
                        usuarioOptionPreview(
                            name: lstIconsProfile[5]["name"]!,
                            icon: lstIconsProfile[5]["icon"]!,
                            colorBG: Color(red: 215/255, green: 215/255, blue: 215/255),
                            colorNameIcon: Color(red: 40/255, green: 20/255, blue: 30/255),
                            action: { showOptionDetail(index: 5) }
                        )
                    }
                    
                    HStack {
                        usuarioOptionPreview(
                            name: lstIconsProfile[1]["name"]!,
                            icon: lstIconsProfile[1]["icon"]!,
                            colorBG: Color(red: 215/255, green: 215/255, blue: 215/255),
                            colorNameIcon: Color(red: 255/255, green: 77/255, blue: 29/255),
                            action: { showOptionDetail(index: 1) }
                        )
                        usuarioOptionPreview(
                            name: lstIconsProfile[2]["name"]!,
                            icon: lstIconsProfile[2]["icon"]!,
                            colorBG: Color(red: 215/255, green: 215/255, blue: 215/255),
                            colorNameIcon: Color(red: 95/255, green: 164/255, blue: 230/255),
                            action: { showOptionDetail(index: 2) }
                        )
                    }
                    
                    HStack {
                        usuarioOptionPreview(
                            name: lstIconsProfile[3]["name"]!,
                            icon: lstIconsProfile[3]["icon"]!,
                            colorBG: Color(red: 215/255, green: 215/255, blue: 215/255),
                            colorNameIcon: Color(red: 231/255, green: 16/255, blue: 138/255),
                            action: { showOptionDetail(index: 3) }
                        )
                        usuarioOptionPreview(
                            name: lstIconsProfile[4]["name"]!,
                            icon: lstIconsProfile[4]["icon"]!,
                            colorBG: Color(red: 215/255, green: 215/255, blue: 215/255),
                            colorNameIcon: Color(red: 140/255, green: 0/255, blue: 42/255),
                            action: { showOptionDetail(index: 4) }
                        )
                    }
                }
                .padding()
            }
            .blur(radius: showDetail ? 3 : 0)
            
            if showDetail, let selectedOption = selectedOption,
               let option = lstIconsProfile.first(where: { $0["name"] == selectedOption }) {
                
                OptionDetailView(
                    name: selectedOption,
                    icon: option["icon"] ?? "",
                    items: option["data"]?.components(separatedBy: ",") ?? [],
                    onClose: { showDetail = false },
                    isLocation: selectedOption == "Ubicación",
                    coordinateRegion: coordinateRegion
                )
                .transition(.scale)
                .zIndex(1)
            }
        }
        .animation(.spring(), value: showDetail)
    }
    
    private func showOptionDetail(index: Int) {
        selectedOption = lstIconsProfile[index]["name"]
        showDetail = true
    }
}

struct OptionDetailView: View {
    let name: String
    let icon: String
    let items: [String]
    let onClose: () -> Void
    var isLocation: Bool = false
    var coordinateRegion: MKCoordinateRegion?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Image(systemName: icon)
                    .font(.title)
                
                Text(name)
                    .font(.title2.bold())
                
                Spacer()
                
                Button(action: onClose) {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title2)
                        .foregroundColor(.gray)
                }
            }
            
            if isLocation, let region = coordinateRegion {
                Map(coordinateRegion: .constant(region), showsUserLocation: true)
                    .frame(height: 300)
                    .cornerRadius(10)
            } else {
                ScrollView {
                    VStack(alignment: .leading, spacing: 8) {
                        ForEach(items, id: \.self) { item in
                            if !item.isEmpty {
                                HStack {
                                    Image(systemName: "circle.fill")
                                        .font(.system(size: 6))
                                    Text(item)
                                }
                            }
                        }
                    }
                }
            }
            
            Spacer()
        }
        .padding()
        .frame(width: 300, height: 400)
        .background(Color(.systemBackground))
        .cornerRadius(20)
        .shadow(radius: 10)
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
    return usuarioMain(window: $window, colors: $colors)
}
