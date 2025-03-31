//
//  Main.swift
//  Hackaton2025MegaTeam
//
//  Created by CEDAM24 on 31/03/25.
//

import SwiftUI

struct dataExample {
    let lstClients: [Client] = [
        Client(firstName: "Name1", lastName1: "NoLastName1", lastName2: "NoLastName1", password: "0000", email: "example1@gmail.com", phoneNumber: "5500000001", userName: "User1"),
        Client(firstName: "Name2", lastName1: "NoLastName2", lastName2: "NoLastName2", password: "0000", email: "example2@gmail.com", phoneNumber: "5500000002", userName: "User2"),
        Client(firstName: "Name3", lastName1: "NoLastName3", lastName2: "NoLastName3", password: "0000", email: "example3@gmail.com", phoneNumber: "5500000003", userName: "User3")
    ]
    let lstSellers: [Seller] = [
        Seller(firstName: "Name1", lastName1: "NoLastName1", lastName2: "NoLastName1", password: "0000", email: "example1@gmail.com", phoneNumber: "5500000001", cathegory: "cathegory1", ubication: "ubication1"),
        Seller(firstName: "Name2", lastName1: "NoLastName2", lastName2: "NoLastName2", password: "0000", email: "example2@gmail.com", phoneNumber: "5500000002", cathegory: "cathegory2", ubication: "ubication2"),
        Seller(firstName: "Name3", lastName1: "NoLastName3", lastName2: "NoLastName3", password: "0000", email: "example3@gmail.com", phoneNumber: "5500000003", cathegory: "cathegory3", ubication: "ubication3")
    ]
}

struct Main: View {
    @State var window = ["night": 1, "login": 0, "screen1": 2, "screen2": 0]
    @State var colors: [Color] = [
        .init(red: 50, green: 50, blue: 50),
        .init(red: 225, green: 225, blue: 225),
        .init(red: 255, green: 77, blue: 29),
        .init(red: 254, green: 205, blue: 56),
        .init(red: 28, green: 240, blue: 42),
        .init(red: 51, green: 159, blue: 24),
        .init(red: 231, green: 16, blue: 138)
    ]
    
    var body: some View {
        VStack {
            if window["login"] == 0 {
                loginMain()
            }
            else if window["login"] == 1 {
                menuMain(window: $window, colors: $colors)
            }
        }
    }
}

#Preview {
    Main()
}
