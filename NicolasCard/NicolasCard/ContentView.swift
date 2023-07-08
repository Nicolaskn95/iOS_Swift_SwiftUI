//
//  ContentView.swift
//  NicolasCard
//
//  Created by Nicolas Katsuji Nagano on 08/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.44, green: 0.35, blue: 0.89, opacity: 1.00)
            .edgesIgnoringSafeArea(.all)
            VStack {
                Image("nicolas")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Nicolas Nagano")
                    .font(Font.custom("GreatVibes-Regular", size: 45))
                    .font(.title)
                    .bold()
                .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size:25))
                Divider()
                InfoView(text: "015 99166-3664", imageName: "phone.circle.fill")
                InfoView(text: "Nicolaskn95", imageName: "airtag")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


