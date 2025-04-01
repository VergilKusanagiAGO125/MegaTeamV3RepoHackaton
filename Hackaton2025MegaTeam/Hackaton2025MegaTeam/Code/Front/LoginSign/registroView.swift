//
//  registroView.swift
//  pruebainsana31032025
//
//  Created by CEDAM23 on 31/03/25.
//

import SwiftUI

struct registroView: View {
    @Binding var window: [String: Int]
    @Binding var colors: [Color]
    
    @State private var nombre = ""
    @State private var ape1 = ""
    @State private var ape2 = ""
    @State private var correo = ""
    @State private var userName = ""
    @State private var password = ""
    @State private var telefono = ""
    
    enum UserType: String, CaseIterable {
        case estudiante = "Estudiante"
        case estudianteConNegocio = "Estudiante con negocio"
    }
    
    @State private var selectedUserType: UserType = .estudiante
    
    @State private var nombreNegocio = ""
    @State private var descripcionNegocio = ""
    @State private var horarioNegocio = ""
    
    enum CategoriaNegocio: String, CaseIterable, Identifiable {
        case bebidas = "Bebidas"
        case comidaFit = "Comida Fit"
        case delivery = "Delivery"
        var id: Self { self }
    }
    
    @State private var categoriasSeleccionadas: Set<CategoriaNegocio> = []
    
    let recomendacionesEstudiante = [
        "Únete a grupos de estudio",
        "Participa en eventos universitarios",
        "Consulta el calendario académico",
        "Explora las bibliotecas disponibles",
        "Conoce los servicios de tutoría"
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Crear cuenta")
                        .font(.largeTitle)
                        .bold()
                        .padding(.top, 20)
                    
                    // Sección de datos personales comunes
                    Group {
                        TextField("Nombre", text: $nombre)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("Apellido 1", text: $ape1)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("Apellido 2", text: $ape2)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("Correo", text: $correo)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.emailAddress)
                        
                        TextField("Usuario", text: $userName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        SecureField("Contraseña", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("Teléfono", text: $telefono)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.phonePad)
                    }
                    .padding(.horizontal)
                    
                    Picker("Tipo de cuenta", selection: $selectedUserType) {
                        ForEach(UserType.allCases, id: \.self) { type in
                            Text(type.rawValue).tag(type)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    Group {
                        if selectedUserType == .estudiante {
                            VStack(alignment: .leading) {
                                Text("Recomendaciones para estudiantes:")
                                    .font(.headline)
                                    .padding(.bottom, 5)
                                
                                ForEach(recomendacionesEstudiante, id: \.self) { recomendacion in
                                    HStack {
                                        Image(systemName: "checkmark.circle.fill")
                                            .foregroundColor(.green)
                                        Text(recomendacion)
                                    }
                                    .padding(.vertical, 2)
                                }
                            }
                            .padding()
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(10)
                        } else {
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Información del negocio")
                                    .font(.headline)
                                
                                TextField("Nombre del negocio", text: $nombreNegocio)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                
                                VStack(alignment: .leading, spacing: 8) {
                                    Text("Categorías del negocio:")
                                        .font(.subheadline)
                                    
                                    ForEach(CategoriaNegocio.allCases) { categoria in
                                        HStack {
                                            Button(action: {
                                                if categoriasSeleccionadas.contains(categoria) {
                                                    categoriasSeleccionadas.remove(categoria)
                                                } else {
                                                    categoriasSeleccionadas.insert(categoria)
                                                }
                                            }) {
                                                HStack {
                                                    Image(systemName: categoriasSeleccionadas.contains(categoria) ? "checkmark.square.fill" : "square")
                                                        .foregroundColor(categoriasSeleccionadas.contains(categoria) ? .blue : .gray)
                                                    Text(categoria.rawValue)
                                                }
                                            }
                                            .buttonStyle(PlainButtonStyle())
                                            Spacer()
                                        }
                                    }
                                }
                                
                                TextField("Horario de atención", text: $horarioNegocio)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                
                                TextEditor(text: $descripcionNegocio)
                                    .frame(height: 100)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                                    )
                                    .overlay(
                                        Group {
                                            if descripcionNegocio.isEmpty {
                                                Text("Descripción del negocio")
                                                    .foregroundColor(.gray.opacity(0.5))
                                                    .padding(.leading, 5)
                                                    .padding(.top, 8)
                                            }
                                        }, alignment: .topLeading
                                    )
                            }
                            .padding()
                            .background(Color.green.opacity(0.1))
                            .cornerRadius(10)
                        }
                    }
                    .animation(.easeInOut, value: selectedUserType)
                    
                    HStack(spacing: 20) {
                        Button("Cancelar") {
                            window["screen1"] = 0
                            window["login"] = 0
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(colors[2])
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        Button("Crear cuenta") {
                            /*if selectedUserType == .estudianteConNegocio {
                                print("Categorías seleccionadas: \(categoriasSeleccionadas.map { $0.rawValue })")
                            }*/
                            window["screen1"] = 2
                            window["login"] = 1
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(colors[2])
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    }
                    .padding()
                }
                .padding(.bottom, 20)
            }
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
    registroView(window: $window, colors: $colors)
}
