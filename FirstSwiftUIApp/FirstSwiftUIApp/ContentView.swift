//
//  ContentView.swift
//  FirstSwiftUIApp
//
//  Created by Furkan Cemal Çalışkan on 25.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack {
            Text("Hello Furkan").padding()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello SwiftUI").padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
