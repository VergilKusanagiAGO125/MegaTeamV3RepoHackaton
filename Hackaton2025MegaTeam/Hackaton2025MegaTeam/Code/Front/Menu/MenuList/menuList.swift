//
//  MenuListView.swift
//  Hackaton2025MegaTeam
//
//  Created by CEDAM24 on 31/03/25.
//

import SwiftUI

struct menuList: View {
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
                    Button(action: {
                        selectedCategory = nil
                    }) {
                        Text("Todos")
                            .padding(10)
                            .background(selectedCategory == nil ? colors[2] : Color.gray.opacity(0.2))
                            .foregroundColor(selectedCategory == nil ? .white : .primary)
                            .cornerRadius(10)
                    }
                    ForEach(categories, id: \.self) { category in
                        Button(action: {
                            selectedCategory = category
                        }) {
                            Text(category)
                                .padding(10)
                                .background(selectedCategory == category ? colors[2] : Color.gray.opacity(0.2))
                                .foregroundColor(selectedCategory == category ? .white : .primary)
                                .cornerRadius(10)
                        }
                    }
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
                        menuButton(item: item, colors: colors)
                            .onTapGesture {
                                selectedItem = item
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

struct MenuItem: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let price: Int
    let category: String
    let imageName: String
    let publishDate: Date
    let type: ItemType
    let isOnSale: Bool
    let discount: Double?
    let distance: Double
    
    enum ItemType: String {
        case food = "Comida"
        case drink = "Bebida"
    }
    
    var finalPrice: Int {
        if let discount = discount, isOnSale {
            return Int(Double(price) * (1 - discount))
        }
        return price
    }
    
    var formattedDistance: String {
        String(format: "%.1f km", distance)
    }
    
    init(name: String, price: Int, category: String, imageName: String, publishDate: Date, type: ItemType, distance: Double) {
        self.name = name
        self.price = price
        self.category = category
        self.imageName = imageName
        self.publishDate = publishDate
        self.type = type
        self.isOnSale = false
        self.discount = nil
        self.distance = distance
    }
    
    init(name: String, price: Int, category: String, imageName: String, publishDate: Date, type: ItemType, isOnSale: Bool, discount: Double, distance: Double) {
        self.name = name
        self.price = price
        self.category = category
        self.imageName = imageName
        self.publishDate = publishDate
        self.type = type
        self.isOnSale = isOnSale
        self.discount = discount
        self.distance = distance
    }
}

extension MenuItem: Equatable {
    static func == (lhs: MenuItem, rhs: MenuItem) -> Bool {
        lhs.id == rhs.id
    }
}

extension MenuItem {
    func categoryColor() -> Color {
        switch category {
        case "Verduras":
            return Color(red: 255/255, green: 77/255, blue: 29/255)
        case "Carnes":
            return Color(red: 254/255, green: 205/255, blue: 56/255)
        case "Cereales":
            return Color(red: 28/255, green: 240/255, blue: 42/255)
        case "Bebidas":
            return Color(red: 51/255, green: 159/255, blue: 24/255)
        case "Bocadillos":
            return Color(red: 231/255, green: 16/255, blue: 138/255)
        default:
            return Color(red: 50/255, green: 50/255, blue: 50/255)
        }
    }
}

struct menuButton: View {
    let item: MenuItem
    let colors: [Color]
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .topTrailing) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(item.categoryColor().opacity(0.2))
                        .frame(height: 120)
                    
                    Image(systemName: item.imageName)
                        .font(.system(size: 40))
                        .foregroundColor(item.categoryColor())
                }
                
                if item.isOnSale {
                    Text("\(Int((item.discount ?? 0) * 100))%")
                        .font(.caption)
                        .bold()
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color.red)
                        .clipShape(Circle())
                        .offset(x: -5, y: 5)
                }
            }
            
            Text(item.name)
                .font(.headline)
                .lineLimit(1)
            
            HStack {
                if item.isOnSale {
                    Text("$\(item.price)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .strikethrough()
                }
                Text("$\(item.finalPrice)")
                    .font(.subheadline)
                    .foregroundColor(item.categoryColor())
            }
            
            HStack {
                Text(item.category)
                    .font(.caption)
                    .foregroundColor(item.categoryColor())
                
                Spacer()
                
                Text(item.type.rawValue)
                    .font(.caption)
                    .foregroundColor(item.type == .food ? .blue : .green)
            }
            
            HStack {
                Image(systemName: "mappin.and.ellipse")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Text(item.formattedDistance)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                Text(item.isOnSale ? "Disponible" : "No Disponible")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(15)
        .shadow(radius: 3)
    }
}

struct menuDetails: View {
    let item: MenuItem
    let colors: [Color]
    
    var body: some View {
        VStack(spacing: 20) {
            ZStack(alignment: .topTrailing) {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(item.categoryColor().opacity(0.2))
                        .frame(height: 200)
                    
                    Image(systemName: item.imageName)
                        .font(.system(size: 80))
                        .foregroundColor(item.categoryColor())
                }
                
                if item.isOnSale {
                    Text("\(Int((item.discount ?? 0) * 100))% OFF")
                        .font(.headline)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(Color.red)
                        .cornerRadius(12)
                        .offset(x: -10, y: 10)
                }
            }
            .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(item.name)
                    .font(.title)
                    .bold()
                
                HStack {
                    if item.isOnSale {
                        Text("$\(item.price)")
                            .font(.title2)
                            .foregroundColor(.gray)
                            .strikethrough()
                    }
                    
                    Text("$\(item.finalPrice)")
                        .font(.title2)
                        .foregroundColor(item.categoryColor())
                    
                    Spacer()
                    
                    Text(item.type.rawValue)
                        .font(.headline)
                        .foregroundColor(item.type == .food ? .blue : .green)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(item.type == .food ? Color.blue.opacity(0.2) : Color.green.opacity(0.2))
                        .cornerRadius(12)
                }
                
                Text(item.category)
                    .font(.subheadline)
                    .foregroundColor(item.categoryColor())
                
                Divider()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Distancia")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                        HStack {
                            Image(systemName: "mappin.and.ellipse")
                                .foregroundColor(item.categoryColor())
                            
                            Text(item.formattedDistance)
                                .font(.subheadline)
                        }
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("Publicado")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                        Text(item.publishDate.formatted(date: .long, time: .omitted))
                            .font(.subheadline)
                    }
                }
            }
            .padding(.horizontal)
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("Estado")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Text(item.isOnSale ? "Disponible" : "No Disponible")
                    .font(.subheadline)
                
                Spacer()
            }
            
            Divider()
            
            Button(action: {
            }) {
                Text("Añadir al carrito")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(item.categoryColor())
                    .cornerRadius(15)
                    .padding(.horizontal)
            }
        }
        .padding(.vertical)
        .presentationDetents([.medium])
        .presentationDragIndicator(.visible)
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
    menuList(window: $window, colors: $colors)
}
