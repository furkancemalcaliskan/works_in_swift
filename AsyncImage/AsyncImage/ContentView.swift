//
//  ContentView.swift
//  AsyncImage
//
//  Created by Furkan Cemal Çalışkan on 16.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                AsyncImage(url: URL(string: "https://raw.githubusercontent.com/dejkoveci/dejkoveci/main/dejkoveci.png")!) { image in
                    image.resizable().aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
                
                List(superHeroArray) { superhero in
                    Text(superhero.name)
                        
                }.navigationTitle("Superhero Book")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
