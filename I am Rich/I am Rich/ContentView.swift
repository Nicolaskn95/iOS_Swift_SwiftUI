//
//  ContentView.swift
//  I Am Rich
//
//  Created by Nicolas Katsuji Nagano on 07/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("I Am Rich")
                    .font(.system(size:40))
                    .foregroundColor(Color.white)
                    .foregroundColor(.accentColor)
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 8 Plus"))
    }
}
