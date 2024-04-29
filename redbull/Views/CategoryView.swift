//
//  CatagoryView.swift
//  redbull
//
//  Created by Hilal Öner on 4/27/24.
//
import SwiftUI

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var price: Double
    var image: String // Image name or URL
    var foregroundColor: Color // New property for foreground color
}

struct CategoryView: View {
    @State private var showMenu = false
    
    let products = [
        Product(name: "p 1", price: 10.99, image: "red1", foregroundColor: .color1),
        Product(name: "p 2", price: 19.99, image: "red2", foregroundColor: .color2),
        Product(name: "p 3", price: 29.99, image: "red3", foregroundColor: .color3),
        Product(name: "p 4", price: 39.99, image: "red4", foregroundColor: .color4),
        Product(name: "p 5", price: 49.99, image: "red5", foregroundColor: .color5),
        Product(name: "p 6", price: 59.99, image: "red6", foregroundColor: .color6),
        Product(name: "p 7", price: 69.99, image: "red7", foregroundColor: .color7),
        Product(name: "p 8", price: 79.99, image: "red8", foregroundColor: .color8)
    ]
    
    var body: some View {
        ZStack {
            Color(.colorw)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 1) {
                    ForEach(products) { product in
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 150)
                                
                                Image(product.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                    .padding(15)
                            }
                            .foregroundColor(product.foregroundColor) // Set foreground color here
                            
                            VStack(alignment: .leading) {
                                Text(product.name)
                                Text("$\(product.price, specifier: "%.2f")")
                            }
                            .padding(.leading, 125)
                        }
                        .padding(.vertical, 5)
                    }
                }
                .padding(.horizontal)
            }
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        // Action for the first menu item
                    }) {
                        Image(systemName: "house")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .padding()
                    
                    Spacer()
                    
                    Button(action: {
                        // Action for the second menu item
                    }) {
                        Image(systemName: "heart")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .padding()
                    
                    Spacer()
                    
                    Button(action: {
                        // Action for the third menu item
                    }) {
                        Image(systemName: "person")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .padding()
                    
                    Spacer()
                    
                    Button(action: {
                        // Action for the cart button
                    }) {
                        Image(systemName: "cart")
                            .font(.title)
                            .padding()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Spacer()
                }
                .padding(.bottom, 30) // Adjust bottom padding for the menu bar
                .background(Color.black.opacity(0.5)) // Set background color for the menu bar
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
