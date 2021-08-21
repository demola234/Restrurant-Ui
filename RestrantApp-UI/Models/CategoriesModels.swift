//
//  CategoriesModels.swift
//  RestrantApp-UI
//
//  Created by Oluwasegun Kolawole Ademola on 19/08/2021.
//

import SwiftUI


struct Category: Identifiable {
    var id = UUID().uuidString
    var title: String
    var image: String
    var color: String
    var isColor: Bool
}


var categories = [
    Category(title: "Burger", image: "burgerking", color: "dark", isColor: true),
    Category(title: "Pizza", image: "pizza", color: "lightgray", isColor: false),
    Category(title: "Cake", image: "cake", color: "lightgray", isColor: false),
    Category(title: "Ice Cream", image: "ice-cream", color: "lightgray", isColor: false),
]

 
