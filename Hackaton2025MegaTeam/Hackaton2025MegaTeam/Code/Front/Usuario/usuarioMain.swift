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
    
    private struct DefaultRegion {
        static let latitude = 19.48344215
        static let longitude = -99.2458080208569
    }
        
    private struct Span {
        static let delta = 0.1
    }
      
    @State var coordinateRegion: MKCoordinateRegion = .init(center: CLLocationCoordinate2D(latitude: DefaultRegion.latitude, longitude: DefaultRegion.longitude), span:.init(latitudeDelta: Span.delta, longitudeDelta: Span.delta))

    var body: some View {
        ScrollView (.vertical) {
            VStack {
                Button (action: {
                    window["screen1"] = 2
                } ) {
                    ZStack {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 120, height: 50)
                                .cornerRadius(10)
                            Text("Regresar")
                    }
                }
                
                HStack {
                    VStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 80, height: 80)
                    }
                    ZStack {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 240, height: 40)
                            .cornerRadius(10)
                        Text("UserName")
                    }
                }
                HStack {
                    ZStack {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 160, height: 240)
                            .cornerRadius(10)
                        ScrollView (.vertical) {
                            ZStack {
                                Text("Preferencias:\nComida 1\nComida 2\nComida 3\nComida 4\nComida 5\nComida 6\nComida 1\nComida 2\nComida 3\nComida 4\nComida 5\nComida 6")
                            }
                        }
                        .frame(width: 160, height: 240)
                    }
                    Map(coordinateRegion: $coordinateRegion, showsUserLocation: true)
                        .frame(width: 160, height: 240)
                }
                HStack {
                    ZStack {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 160, height: 240)
                            .cornerRadius(10)
                        ScrollView (.vertical) {
                            ZStack {
                                Text("Alergico A:\nAlergia 1\nAlergia 2\nAlergia 3\nAlergia 4\nAlergia 5\nAlergia 6\nAlergia 1\nAlergia 2\nAlergia 3\nAlergia 4\nAlergia 5\nAlergia 6")
                            }
                        }
                        .frame(width: 160, height: 240)
                    }
                    ZStack {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 160, height: 240)
                            .cornerRadius(10)
                        ScrollView (.vertical) {
                            ZStack {
                                Text("Menu Del Dia:\nMenu 1\nMenu 2\nMenu 3\nMenu 4\nMenu 5\nMenu 6\nMenu 1\nMenu 2\nMenu 3\nMenu 4\nMenu 5\nMenu 6")
                            }
                        }
                        .frame(width: 160, height: 240)
                    }
                }
                HStack {
                    ZStack {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 160, height: 240)
                            .cornerRadius(10)
                        ScrollView (.vertical) {
                            ZStack {
                                Text("Poco Pedidos:\nPoco Pedido 1\nPoco Pedido 2\nPoco Pedido 3\nPoco Pedido 4\nPoco Pedido 5\nPoco Pedido 6\nPoco Pedido 1\nPoco Pedido 2\nPoco Pedido 3\nPoco Pedido 4\nPoco Pedido 5\nPoco Pedido 6")
                            }
                        }
                        .frame(width: 160, height: 240)
                    }
                    ZStack {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 160, height: 240)
                            .cornerRadius(10)
                        ScrollView (.vertical) {
                            ZStack {
                                Text("Historial:\nHistorial 1\nHistorial 2\nHistorial 3\nHistorial 4\nHistorial 5\nHistorial 6\nHistorial 1\nHistorial 2\nHistorial 3\nHistorial 4\nHistorial 5\nHistorial 6")
                            }
                        }
                        .frame(width: 160, height: 240)
                    }
                }
            }
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
    usuarioMain(window: $window, colors: $colors)
}
