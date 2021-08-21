//
//  MenuModels.swift
//  RestrantApp-UI
//
//  Created by Oluwasegun Kolawole Ademola on 19/08/2021.
//

import SwiftUI

struct Menu: Identifiable {
    var id = UUID().uuidString
    var name: String
    var color1: String
    var color2: String
    var image: String
    var price: String
    var description: String
}


var menus = [
    Menu(name: "Double cheeseburger", color1: "LightOrange", color2: "DarkOrange", image: "burger", price: "2,999.99", description: "Many consumers enjoy a beef burger whenever they get a chance, and many of us have our go-to places for one. However, the results show that quick-service establishments aren’t the only places consumers go for a burger. In fact, many also choose casual or even fine-dining establishments to enjoy a burger. "),
Menu(name: "Pizza", color1: "Lightgreen", color2: "Darkgreen", image: "pizzaking", price: "1,599.99", description: "Many consumers enjoy a beef burger whenever they get a chance, and many of us have our go-to places for one. However, the results show that quick-service establishments aren’t the only places consumers go for a burger. In fact, many also choose casual or even fine-dining establishments to enjoy a burger. "),
Menu(name: "Ice cream", color1: "Lightblue", color2: "Darkblue", image: "icecream", price: "3,000.000", description: "Many consumers enjoy a beef burger whenever they get a chance, and many of us have our go-to places for one. However, the results show that quick-service establishments aren’t the only places consumers go for a burger. In fact, many also choose casual or even fine-dining establishments to enjoy a burger. "),
Menu(name: "Cake", color1: "Lightpurple", color2: "Darkpurple", image: "cakeking", price: "550.00", description: "Many consumers enjoy a beef burger whenever they get a chance, and many of us have our go-to places for one. However, the results show that quick-service establishments aren’t the only places consumers go for a burger. In fact, many also choose casual or even fine-dining establishments to enjoy a burger. ")

]
