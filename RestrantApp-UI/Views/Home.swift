
//  Home.swift
//  ResturateApp-Ui
//
//  Created by Oluwasegun Kolawole Ademola on 24/07/2021.
//

import SwiftUI

struct Home: View {
    @State private var search = ""
    @State var selectedItem: Menu = menus[0]
    @State var show = true
    @Namespace var animation
    var lightgradirent = Gradient(colors: [Color("LightOrange"), Color("DarkOrange")])
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Image("Logo")
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 29, height: 33)
                    Spacer()
                    Button(action: {}, label: {
                        HStack (spacing: 5){
                            Image("Bag")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 18, height: 18)
                            Text("3")
                                .font(.system(size: 18, weight: .medium, design: .default))
                                .foregroundColor(.white)
                        }
                        .padding(.leading, 15)
                        .padding(.trailing, 17)
                        .padding(.top, 9)
                        .padding(.bottom, 13)
                        .frame(width: 66, height: 40)
                        .background(LinearGradient(gradient: lightgradirent, startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(10)
                        .frame(width: 66, height: 40)
                    })
                        
                }
                .padding(.horizontal, 30)
                .padding(.vertical, 20)
                ScrollView {
                    VStack (alignment: .leading, spacing: 5.0){
                        HStack {
                            Image("Search")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                            TextField("Search", text: $search)
                                
                        }
                        .padding()
                        .frame(height: 50)
                        .background(Color("Gray"))
                        .cornerRadius(10)
                        Spacer()
                        LazyHGrid (rows: Array(repeating: GridItem(.flexible(),spacing: 20), count: 1),spacing: 25){
                            ForEach(categories) { categiries in
                                CategoryViews(categories: categiries)
                            }
                        }
                        .padding(.vertical, 10)
                        Spacer()
                        Text("FOOD MENU")
                            .fontWeight(.bold)
                            .font(.title3)
                            .padding()
                        LazyVGrid (columns: Array(repeating: GridItem(.flexible(),spacing: 20), count: 2), spacing: 25.0) {
                            ForEach(menus) { menus in
                                MenuViews(menus: menus, animation: animation)
                                    .onTapGesture {
                                        withAnimation(.spring()) {
                                            selectedItem = menus
                                            show.toggle()
                                        }
                                    }
                            }
                        }
                    }
                    .padding(.vertical, 20)
                    .padding(.horizontal, 40)
                }
                Spacer()
            }.opacity(show ? 0 : 1)
            
            if show {
                ProductView(selectedItem: $selectedItem, show: $show, animation: animation)
            }
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
