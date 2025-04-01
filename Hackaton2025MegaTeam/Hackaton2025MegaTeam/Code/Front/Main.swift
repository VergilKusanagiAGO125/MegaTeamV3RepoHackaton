//
//  Main.swift
//  Hackaton2025MegaTeam
//
//  Created by CEDAM24 on 31/03/25.
//

import SwiftUI

struct dataExample {
    let clients: [Client] = [
        .init(firstName: "María",    lastName1: "García",    lastName2: "López",     password: "mg2024", email: "maria.garcia@example.com",  phoneNumber: "5512345678", userName: "mariag"),
        .init(firstName: "Juan",     lastName1: "Martínez",  lastName2: "Sánchez",   password: "jm2024", email: "juan.martinez@example.com", phoneNumber: "5512345679", userName: "juanm"),
        .init(firstName: "Ana",      lastName1: "Rodríguez",  lastName2: "Fernández", password: "ar2024", email: "ana.rodriguez@example.com", phoneNumber: "5512345680", userName: "anar"),
        .init(firstName: "Carlos",   lastName1: "Hernández", lastName2: "Gómez",     password: "ch2024", email: "carlos.hernandez@example.com", phoneNumber: "5512345681", userName: "carlosh"),
        .init(firstName: "Laura",    lastName1: "López",     lastName2: "Díaz",      password: "ll2024", email: "laura.lopez@example.com", phoneNumber: "5512345682", userName: "laural"),
        .init(firstName: "Pedro",    lastName1: "González",  lastName2: "Moreno",    password: "pg2024", email: "pedro.gonzalez@example.com", phoneNumber: "5512345683", userName: "pedrog"),
        .init(firstName: "Sofía",    lastName1: "Pérez",     lastName2: "Álvarez",   password: "sp2024", email: "sofia.perez@example.com", phoneNumber: "5512345684", userName: "sofiap"),
        .init(firstName: "Miguel",   lastName1: "Sánchez",   lastName2: "Romero",    password: "ms2024", email: "miguel.sanchez@example.com", phoneNumber: "5512345685", userName: "miguels"),
        .init(firstName: "Elena",    lastName1: "Ramírez",   lastName2: "Navarro",   password: "er2024", email: "elena.ramirez@example.com", phoneNumber: "5512345686", userName: "elenar"),
        .init(firstName: "Javier",   lastName1: "Torres",    lastName2: "Jiménez",   password: "jt2024", email: "javier.torres@example.com", phoneNumber: "5512345687", userName: "javier")
    ]

    let sellers: [Seller] = [
        .init(firstName: "Alejandro", lastName1: "Vázquez",  lastName2: "Ruiz",     password: "av2024", email: "alejandro.vazquez@example.com", phoneNumber: "5523456789", cathegory: "Comida Mexicana",    ubication: "CDMX Norte"),
        .init(firstName: "Patricia",  lastName1: "Castro",   lastName2: "Molina",   password: "pc2024", email: "patricia.castro@example.com",  phoneNumber: "5523456790", cathegory: "Repostería",          ubication: "Guadalajara Centro"),
        .init(firstName: "Ricardo",   lastName1: "Ortega",   lastName2: "Medina",   password: "ro2024", email: "ricardo.ortega@example.com",  phoneNumber: "5523456791", cathegory: "Comida Italiana",       ubication: "Monterrey Sur"),
        .init(firstName: "Verónica",  lastName1: "Flores",   lastName2: "Cortés",   password: "vf2024", email: "veronica.flores@example.com", phoneNumber: "5523456792", cathegory: "Comida Vegana",           ubication: "Puebla Centro"),
        .init(firstName: "Fernando",  lastName1: "Santos",   lastName2: "Guerrero", password: "fs2024", email: "fernando.santos@example.com", phoneNumber: "5523456793", cathegory: "Mariscos",       ubication: "Toluca Este"),
        .init(firstName: "Daniela",   lastName1: "Méndez",   lastName2: "Ríos",     password: "dm2024", email: "daniela.mendez@example.com",  phoneNumber: "5523456794", cathegory: "Comida Rápida",        ubication: "Querétaro Norte"),
        .init(firstName: "Roberto",   lastName1: "Delgado",  lastName2: "Vega",     password: "rd2024", email: "roberto.delgado@example.com", phoneNumber: "5523456795", cathegory: "Carnes y Parrilla",       ubication: "León Centro"),
        .init(firstName: "Lucía",     lastName1: "Reyes",    lastName2: "Soto",     password: "lr2024", email: "lucia.reyes@example.com",     phoneNumber: "5523456796", cathegory: "Comida Asiática",         ubication: "Tijuana Este"),
        .init(firstName: "Arturo",    lastName1: "Morales",  lastName2: "Cruz",     password: "am2024", email: "arturo.morales@example.com",  phoneNumber: "5523456797", cathegory: "Comida Saludable",     ubication: "Mérida Norte"),
        .init(firstName: "Adriana",   lastName1: "Juárez",   lastName2: "Miranda",  password: "aj2024", email: "adriana.juarez@example.com",  phoneNumber: "5523456798", cathegory: "Postres y Helados",      ubication: "Cancún Centro")
    ]
}

struct Main: View {
    @State var window = ["night": 0, "login": 0, "screen1": 0, "screen2": 0]
    @State var colors: [Color] = [
        Color(red: 50/255, green: 50/255, blue: 50/255),
        Color(red: 225/255, green: 225/255, blue: 225/255),
        Color(red: 255/255, green: 77/255, blue: 29/255),
        Color(red: 254/255, green: 205/255, blue: 56/255),
        Color(red: 28/255, green: 240/255, blue: 42/255),
        Color(red: 51/255, green: 159/255, blue: 24/255),
        Color(red: 231/255, green: 16/255, blue: 138/255)
    ]
    
    @State private var isActive = false
    
    var body: some View {
        VStack {
            if isActive {
                if window["login"] == 0 {
                    if window["screen1"] == 0 {
                        loginMain(window: $window, colors: $colors)
                    } else {
                        registroView(window: $window, colors: $colors)
                    }
                } else if window["login"] == 1 {
                    menuMain(window: $window, colors: $colors)
                }
            } else {
                Image("logo")
            }
        }
        
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                withAnimation {
                    isActive = true
                }
            }
        }
    }
}

#Preview {
    Main()
}
