//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Nicolas Katsuji Nagano on 09/07/23.
//

import SwiftUI

struct ContentView: View {
    
   @State var diceLeftNumber = 1
   @State var diceRightNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceeView(number: diceLeftNumber)
                    DiceeView(number: diceRightNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.diceLeftNumber = Int.random(in: 1...6)
                    self.diceRightNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}
    
struct DiceeView: View {
    
    let number: Int
    
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

