//
//  ContentView.swift
//  H4X0R
//
//  Created by Nicolas Katsuji Nagano on 12/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{            
            List(posts, id: \.self) { post in
                Text(post.title)
                }
            .navigationBarTitle("H4X0R NEWS")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
        let id = UUID()
        let title: String
}

let posts  = [
    ( id: "1", title: "Hello"),
    ( id: "2", title: "Bonjour"),
    ( id: "3", title: "Rola")
]
