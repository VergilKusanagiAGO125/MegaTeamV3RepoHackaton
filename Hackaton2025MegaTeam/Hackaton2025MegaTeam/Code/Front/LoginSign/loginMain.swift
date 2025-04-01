//
//  ContentView.swift
//  pruebainsana31032025
//
//  Created by CEDAM23 on 31/03/25.
//

import SwiftUI

struct loginMain: View {
    @Binding var window: [String: Int]
    @Binding var colors: [Color]
    
    @State private var userName = ""
    @State private var password = ""
    @State private var wrongUserName = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        
        NavigationView{
            ZStack{
                VStack{
                    Text("Bienvenido")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Usuario", text:$userName)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUserName))
                    
                    SecureField("Contraseña", text:$password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    Button("Iniciar sesión"){
                        window["screen1"] = 2
                        window["login"] = 1
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: Text("You are logged in @\(userName)"), isActive: $showingLoginScreen){
                        EmptyView()
                    }
                }
                VStack{
                    Spacer()
                    Text("¿No tienes tu cuenta?")
                        .bold()
                        .padding()
                    Button(action: {
                        window["screen1"] = 1
                        window["login"] = 0
                    }){
                        ZStack{
                            Text("Crear cuenta")
                        }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
    func authenticateUser(userName: String, password: String) {
        //Las de autenticar
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
    loginMain(window: $window, colors: $colors)
}
