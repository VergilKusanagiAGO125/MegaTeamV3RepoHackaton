//
//  ContentView.swift
//  pruebainsana31032025
//
//  Created by CEDAM23 on 31/03/25.
//

import SwiftUI

struct loginMain: View {
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
                    /*Button("Crear cuenta"){
                        
                    }*/
                    Button(action: {
                        
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
    loginMain()
}
