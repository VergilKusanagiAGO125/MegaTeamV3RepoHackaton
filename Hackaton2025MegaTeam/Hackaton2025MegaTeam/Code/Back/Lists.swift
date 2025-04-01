//
//  UserProfileView.swift
//  Hackaton2025MegaTeam
//
//  Created by CEDAM24 on 31/03/25.
//

/*
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
     let distance: Double // en kilómetros
     
     enum ItemType: String {
         case food = "Comida"
         case drink = "Bebida"
     }
     
     // Computed properties
     var finalPrice: Int {
         if let discount = discount, isOnSale {
             return Int(Double(price) * (1 - discount))
         }
         return price
     }
     
     var formattedDistance: String {
         String(format: "%.1f km", distance)
     }
     
     // Inicializador por defecto para items sin oferta
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
     
     // Inicializador para items con oferta
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

 // Ejemplo de lista de menuItems corregida
 private let menuItems: [MenuItem] = [
     // Fit (comidas saludables)
     MenuItem(name: "Bowl de quinoa", price: 110, category: "Fit", imageName: "leaf.fill", publishDate: Date().addingTimeInterval(-86400 * 3), type: .food, isOnSale: true, discount: 0.15, distance: 1.2),
     MenuItem(name: "Ensalada de aguacate", price: 95, category: "Fit", imageName: "carrot.fill", publishDate: Date().addingTimeInterval(-86400 * 5), type: .food, distance: 2.5),
     MenuItem(name: "Pechuga a la parrilla", price: 130, category: "Fit", imageName: "flame.fill", publishDate: Date().addingTimeInterval(-86400 * 2), type: .food, isOnSale: true, discount: 0.20, distance: 0.8),
     MenuItem(name: "Smoothie verde", price: 60, category: "Fit", imageName: "burst.fill", publishDate: Date().addingTimeInterval(-86400 * 1), type: .drink, distance: 3.1),
     
     // Delivery (comidas rápidas/entregables)
     MenuItem(name: "Hamburguesa clásica", price: 90, category: "Delivery", imageName: "circle.grid.3x3.fill", publishDate: Date().addingTimeInterval(-86400 * 4), type: .food, distance: 1.8),
     MenuItem(name: "Pizza pepperoni", price: 150, category: "Delivery", imageName: "circle.grid.3x3.fill", publishDate: Date().addingTimeInterval(-86400 * 6), type: .food, isOnSale: true, discount: 0.10, distance: 0.5),
     MenuItem(name: "Alitas BBQ", price: 120, category: "Delivery", imageName: "flame.fill", publishDate: Date().addingTimeInterval(-86400 * 7), type: .food, distance: 2.2),
     MenuItem(name: "Sushi mixto", price: 180, category: "Delivery", imageName: "leaf.fill", publishDate: Date().addingTimeInterval(-86400 * 1), type: .food, isOnSale: true, discount: 0.25, distance: 1.5),
     
     // Drink (bebidas)
     MenuItem(name: "Agua mineral", price: 25, category: "Drink", imageName: "drop.fill", publishDate: Date().addingTimeInterval(-86400 * 10), type: .drink, distance: 0.3),
     MenuItem(name: "Té helado", price: 40, category: "Drink", imageName: "mug.fill", publishDate: Date().addingTimeInterval(-86400 * 8), type: .drink, isOnSale: true, discount: 0.30, distance: 1.0),
     MenuItem(name: "Jugo natural", price: 50, category: "Drink", imageName: "burst.fill", publishDate: Date().addingTimeInterval(-86400 * 3), type: .drink, distance: 2.8),
     MenuItem(name: "Café latte", price: 55, category: "Drink", imageName: "cup.and.saucer.fill", publishDate: Date().addingTimeInterval(-86400 * 2), type: .drink, isOnSale: true, discount: 0.15, distance: 0.7)
 ]
 */

//
//  menuList.swift
//  Hackaton2025MegaTeam
//
//  Created by CEDAM24 on 31/03/25.
//
