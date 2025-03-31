//
//  registroView.swift
//  pruebainsana31032025
//
//  Created by CEDAM23 on 31/03/25.
//

import SwiftUI

struct registroView: View {
    @State private var nombre = ""
    @State private var wrongNombre = 0
    @State private var ape1 = ""
    @State private var wrongApe1 = 0
    @State private var ape2 = ""
    @State private var wrongApe2 = 0
    @State private var correo = ""
    @State private var wrongCorreo = 0
    @State private var userName = ""
    @State private var wrongUserName = 0
    @State private var password = ""
    @State private var wrongPassword = 0
    @State private var telefono = ""
    @State private var wrongTelefono = 0
    
    let lstFilter: [String] = ["Estudiante", "Estudiante con negocio"]
    @State private var selectFilter: Int = 0
    
    
    var body: some View {
        
        NavigationView{
            ZStack{
                
                VStack{
                    
                    Text("Crear cuenta")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Nombre", text:$nombre)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongNombre))
                    TextField("Apellido 1", text:$ape1)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongApe1))
                    TextField("Apellido 2", text:$ape2)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongApe2))
                    TextField("Correo", text:$correo)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongCorreo))
                    TextField("Usuario", text:$userName)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUserName))
                    TextField("Contraseña", text:$password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    TextField("Teléfono", text:$telefono)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongTelefono))
                    
                    VStack{
                        Picker(selection: $selectFilter, label: Text("Selecciona Modo De Cuenta")){
                            ForEach(0..<lstFilter.count, id: \.self){
                                Text(lstFilter[$0])
                            }
                        }
                    }
                    
                }
                
                /*VStack{
                    Picker(selection: $selectFilter, label: Text("Select colour")){
                        ForEach(0..<lstFilter.count, id: \.self){
                            Text(lstFilter[$0])
                        }
                    }
                }*/
                
            }
        }
        Button(action: {
            
        }){
            ZStack{
                Text("Crear cuenta")
                    .padding(10)
            }
        }
        
        Button(action: {
            
        }){
            ZStack{
                Text("Cancelar")
                    .padding(10)
            }
        }
    }
}

#Preview {
    registroView()
}
