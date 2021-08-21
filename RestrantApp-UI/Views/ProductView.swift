//
//  ProductView.swift
//  RestrantApp-UI
//
//  Created by Oluwasegun Kolawole Ademola on 20/08/2021.
//

import SwiftUI

struct ProductView: View {
    @Binding var selectedItem: Menu
    @Binding var show: Bool
    @State var loadcontent = false
    var animation: Namespace.ID
    var lightgradirent = Gradient(colors: [Color("LightOrange"), Color("DarkOrange")])
    var body: some View {
        
        VStack {
            HStack {
                Button(action: {
                    withAnimation(.spring()){
                        show.toggle()
                    }
                }) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 24))
                        .foregroundColor(Color("DarkOrange"))
                }
                .frame(width: 40, height: 40)
                .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(LinearGradient(gradient: lightgradirent, startPoint: .top, endPoint: .bottom)))
                        Spacer()
                        Text(selectedItem.name)
                    .fontWeight(.bold)
                    .font(.title3)
                    .foregroundColor(Color("DarkOrange"))
                Spacer()
                Button(action: {}){
                Image("ProductCategories")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
            }
            }
            .padding()
            .padding(.vertical, 10)
            .padding(.horizontal, 5)
            Spacer()
            VStack{
                HStack{
                    Text(selectedItem.name)
                        .fontWeight(.bold)
                        .font(.caption)
                            .foregroundColor(.black)
                            .padding(.vertical,5)
                            .padding(.horizontal,20)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(5.0)
                    Spacer()
                    Image("heart")
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                }
                .padding()
                padding(.top, 5.0)
                Image(selectedItem.image)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 150)
            }
            .frame(width: 350, height: 275)
            .background(LinearGradient(gradient: Gradient(colors: [Color(selectedItem.color1), Color(selectedItem.color2)]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(35.0)
            Spacer()

//            VStack (spacing: 10) {
//                Text(selectedItem.name)
//                    .fontWeight(.bold)
//                    .font(.caption)
//                        .foregroundColor(.black)
//                        .padding(.vertical,5)
//                        .padding(.horizontal,20)
//                        .background(Color.white.opacity(0.5))
//                        .cornerRadius(5.0)
//                Text("N \(selectedItem.price)")
//                    .font(.caption)
//                    .fontWeight(.semibold)
//                    .padding(.vertical, 5)
//                    .padding(.horizontal, 10)
//                    .background(LinearGradient(gradient: Gradient(colors: [Color(selectedItem.color1), Color(selectedItem.color2)]), startPoint: .top, endPoint: .bottom)
//                    .foregroundColor(Color("dark")))
//            }
//            VStack {
//            Text("Product Description")
//                .fontWeight(.bold)
//                .font(.caption)
//                    .foregroundColor(.black)
//                    .padding(.vertical,5)
//                    .padding(.horizontal,20)
//                    .background(Color.white.opacity(0.5))
//                    .cornerRadius(5.0)
//            Text(selectedItem.description)
//                .fontWeight(.bold)
//                .font(.caption2)
//                .frame(width: 347, height: 138, alignment: .topLeading)
//                .lineSpacing(20)
//        }
            Spacer()
        }
            }
}

