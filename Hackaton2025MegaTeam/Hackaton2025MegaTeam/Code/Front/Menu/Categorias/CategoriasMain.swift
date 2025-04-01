//
//  CategoriasMain.swift
//  Hackaton2025MegaTeam
//
//  Created by CEDAM24 on 01/04/25.
//

import SwiftUI

struct CategoriasMain: View {
    @Binding var window: [String: Int]
    @Binding var colors: [Color]
    
    private let menuItems: [MenuItem] = [
        // Verduras
        MenuItem(name: "Bowl de quinoa", price: 110, category: "Verduras", imageName: "leaf.fill", publishDate: Date().addingTimeInterval(-86400 * 3), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Ensalada de aguacate", price: 95, category: "Verduras", imageName: "carrot.fill", publishDate: Date().addingTimeInterval(-86400 * 5), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Ensalada César", price: 85, category: "Verduras", imageName: "leaf.fill", publishDate: Date().addingTimeInterval(-86400 * 1), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Tofu salteado", price: 90, category: "Verduras", imageName: "leaf.fill", publishDate: Date().addingTimeInterval(-86400 * 7), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Ensalada griega", price: 80, category: "Verduras", imageName: "sun.max.fill", publishDate: Date().addingTimeInterval(-86400 * 3), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Ensalada de espinacas", price: 75, category: "Verduras", imageName: "leaf.fill", publishDate: Date().addingTimeInterval(-86400 * 4), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Ensalada de garbanzos", price: 80, category: "Verduras", imageName: "leaf.fill", publishDate: Date().addingTimeInterval(-86400 * 3), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        
        // Carnes
        MenuItem(name: "Pechuga a la parrilla", price: 130, category: "Carnes", imageName: "flame.fill", publishDate: Date().addingTimeInterval(-86400 * 2), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Salmón al horno", price: 145, category: "Carnes", imageName: "fish.fill", publishDate: Date().addingTimeInterval(-86400 * 4), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Ensalada de atún", price: 95, category: "Carnes", imageName: "fish.fill", publishDate: Date().addingTimeInterval(-86400 * 5), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Pavo al horno", price: 110, category: "Carnes", imageName: "flame.fill", publishDate: Date().addingTimeInterval(-86400 * 2), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Hamburguesa clásica", price: 90, category: "Carnes", imageName: "circle.grid.3x3.fill", publishDate: Date().addingTimeInterval(-86400 * 4), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Alitas BBQ", price: 120, category: "Carnes", imageName: "flame.fill", publishDate: Date().addingTimeInterval(-86400 * 7), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Burrito de carne", price: 95, category: "Carnes", imageName: "tortoise.fill", publishDate: Date().addingTimeInterval(-86400 * 3), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Hamburguesa doble", price: 120, category: "Carnes", imageName: "circle.grid.3x3.fill", publishDate: Date().addingTimeInterval(-86400 * 3), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Pollo frito", price: 110, category: "Carnes", imageName: "flame.fill", publishDate: Date().addingTimeInterval(-86400 * 5), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Costillas BBQ", price: 150, category: "Carnes", imageName: "flame.fill", publishDate: Date().addingTimeInterval(-86400 * 3), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        
        // Cereales
        MenuItem(name: "Bowl de arroz integral", price: 85, category: "Cereales", imageName: "leaf.fill", publishDate: Date().addingTimeInterval(-86400 * 3), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Pasta integral", price: 90, category: "Cereales", imageName: "fork.knife", publishDate: Date().addingTimeInterval(-86400 * 5), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Wrap de pollo", price: 75, category: "Cereales", imageName: "tortoise.fill", publishDate: Date().addingTimeInterval(-86400 * 6), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Bowl de proteína", price: 120, category: "Cereales", imageName: "scalemass.fill", publishDate: Date().addingTimeInterval(-86400 * 2), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        
        // Bebidas
        MenuItem(name: "Smoothie verde", price: 60, category: "Bebidas", imageName: "burst.fill", publishDate: Date().addingTimeInterval(-86400 * 1), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Batido de proteína", price: 70, category: "Bebidas", imageName: "bolt.fill", publishDate: Date().addingTimeInterval(-86400 * 4), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Smoothie de frutos rojos", price: 65, category: "Bebidas", imageName: "burst.fill", publishDate: Date().addingTimeInterval(-86400 * 2), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Agua mineral", price: 25, category: "Bebidas", imageName: "drop.fill", publishDate: Date().addingTimeInterval(-86400 * 10), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Té helado", price: 40, category: "Bebidas", imageName: "mug.fill", publishDate: Date().addingTimeInterval(-86400 * 8), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Jugo natural", price: 50, category: "Bebidas", imageName: "burst.fill", publishDate: Date().addingTimeInterval(-86400 * 3), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Café latte", price: 55, category: "Bebidas", imageName: "cup.and.saucer.fill", publishDate: Date().addingTimeInterval(-86400 * 2), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Refresco cola", price: 30, category: "Bebidas", imageName: "drop.fill", publishDate: Date().addingTimeInterval(-86400 * 7), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Limonada", price: 35, category: "Bebidas", imageName: "burst.fill", publishDate: Date().addingTimeInterval(-86400 * 4), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Café americano", price: 40, category: "Bebidas", imageName: "cup.and.saucer.fill", publishDate: Date().addingTimeInterval(-86400 * 5), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Chocolate caliente", price: 45, category: "Bebidas", imageName: "mug.fill", publishDate: Date().addingTimeInterval(-86400 * 3), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Té verde", price: 35, category: "Bebidas", imageName: "mug.fill", publishDate: Date().addingTimeInterval(-86400 * 6), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Smoothie de mango", price: 60, category: "Bebidas", imageName: "burst.fill", publishDate: Date().addingTimeInterval(-86400 * 2), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Café capuchino", price: 60, category: "Bebidas", imageName: "cup.and.saucer.fill", publishDate: Date().addingTimeInterval(-86400 * 4), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Agua de jamaica", price: 30, category: "Bebidas", imageName: "drop.fill", publishDate: Date().addingTimeInterval(-86400 * 5), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Café moca", price: 65, category: "Bebidas", imageName: "cup.and.saucer.fill", publishDate: Date().addingTimeInterval(-86400 * 3), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Té chai", price: 50, category: "Bebidas", imageName: "mug.fill", publishDate: Date().addingTimeInterval(-86400 * 6), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Smoothie de plátano", price: 55, category: "Bebidas", imageName: "burst.fill", publishDate: Date().addingTimeInterval(-86400 * 2), type: .drink, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        
        // Bocadillos
        MenuItem(name: "Pizza pepperoni", price: 150, category: "Bocadillos", imageName: "circle.grid.3x3.fill", publishDate: Date().addingTimeInterval(-86400 * 6), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Sushi mixto", price: 180, category: "Bocadillos", imageName: "leaf.fill", publishDate: Date().addingTimeInterval(-86400 * 1), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Nachos con queso", price: 70, category: "Bocadillos", imageName: "circle.grid.3x3.fill", publishDate: Date().addingTimeInterval(-86400 * 5), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Pizza hawaiana", price: 160, category: "Bocadillos", imageName: "circle.grid.3x3.fill", publishDate: Date().addingTimeInterval(-86400 * 2), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Hot dog", price: 55, category: "Bocadillos", imageName: "flame.fill", publishDate: Date().addingTimeInterval(-86400 * 4), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Tacos al pastor", price: 85, category: "Bocadillos", imageName: "tortoise.fill", publishDate: Date().addingTimeInterval(-86400 * 6), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Pizza vegetariana", price: 140, category: "Bocadillos", imageName: "circle.grid.3x3.fill", publishDate: Date().addingTimeInterval(-86400 * 1), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Pizza margarita", price: 130, category: "Bocadillos", imageName: "circle.grid.3x3.fill", publishDate: Date().addingTimeInterval(-86400 * 2), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Papas fritas", price: 45, category: "Bocadillos", imageName: "flame.fill", publishDate: Date().addingTimeInterval(-86400 * 4), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Enchiladas", price: 95, category: "Bocadillos", imageName: "tortoise.fill", publishDate: Date().addingTimeInterval(-86400 * 6), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Pizza 4 quesos", price: 170, category: "Bocadillos", imageName: "circle.grid.3x3.fill", publishDate: Date().addingTimeInterval(-86400 * 1), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Empanadas", price: 60, category: "Bocadillos", imageName: "circle.grid.3x3.fill", publishDate: Date().addingTimeInterval(-86400 * 5), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Pizza de champiñones", price: 145, category: "Bocadillos", imageName: "circle.grid.3x3.fill", publishDate: Date().addingTimeInterval(-86400 * 2), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Sandwich de pollo", price: 75, category: "Bocadillos", imageName: "flame.fill", publishDate: Date().addingTimeInterval(-86400 * 4), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Huevos benedictinos", price: 85, category: "Bocadillos", imageName: "egg.fill", publishDate: Date().addingTimeInterval(-86400 * 1), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5)),
        MenuItem(name: "Sopa de lentejas", price: 65, category: "Bocadillos", imageName: "flame.fill", publishDate: Date().addingTimeInterval(-86400 * 6), type: .food, isOnSale: Bool.random(), discount: Double.random(in: 0.1...0.3), distance: Double.random(in: 0.5...5))
    ]
    
    private var categories: [String] {
        Array(Set(menuItems.map { $0.category })).sorted()
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(categories, id: \.self) { category in
                        
                        NavigationLink(destination: menuFilterList(window: $window,
                                                                colors: $colors,
                                                                category: category,
                                                                menuItems: menuItems)) {
                            Text(category)
                                .font(.headline)
                                .padding(.vertical, 8)
                        }
                    }
                }
                .navigationTitle("Categorías")
            }
        }
    }
}

struct menuFilterList: View {
    @Binding var window: [String: Int]
    @Binding var colors: [Color]
    let category: String
    let menuItems: [MenuItem]
    
    @State private var selectedCategory: String? = nil
    @State private var selectedItem: MenuItem? = nil
    @State private var sortOption: SortOption = .name
    @State private var showOnlyOnSale: Bool = false
    @State private var maxDistance: Double = 5.0
    
    private var categories: [String] {
        Array(Set(menuItems.map { $0.category })).sorted()
    }
    
    enum SortOption: String, CaseIterable {
        case name = "Nombre"
        case date = "Fecha"
        case price = "Precio"
        case distance = "Distancia"
        case discount = "Descuento"
    }
    
    var filteredItems: [MenuItem] {
        var items = menuItems
        
        if let category = selectedCategory {
            items = items.filter { $0.category == category }
        }
        
        if showOnlyOnSale {
            items = items.filter { $0.isOnSale }
        }
        items = items.filter { $0.distance <= maxDistance }
        
        switch sortOption {
        case .name:
            return items.sorted { $0.name < $1.name }
        case .date:
            return items.sorted { $0.publishDate > $1.publishDate }
        case .price:
            return items.sorted { $0.finalPrice < $1.finalPrice }
        case .distance:
            return items.sorted { $0.distance < $1.distance }
        case .discount:
            return items.sorted { ($0.discount ?? 0) > ($1.discount ?? 0) }
        }
    }
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Picker("Ordenar por", selection: $sortOption) {
                        ForEach(SortOption.allCases, id: \.self) { option in
                            Text(option.rawValue).tag(option)
                        }
                    }
                    .pickerStyle(.menu)
                }
                .padding()
            }
            
            ScrollView(.vertical) {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(filteredItems) { item in
                        if item.category == category
                        {
                            menuButton(item: item, colors: colors)
                                .onTapGesture {
                                    selectedItem = item
                                }
                        }
                    }
                }
                .padding()
            }
        }
        .navigationTitle("Menú")
        .sheet(item: $selectedItem) { item in
            menuDetails(item: item, colors: colors)
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
    CategoriasMain(window: $window, colors: $colors)
}
