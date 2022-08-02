//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Furkan Cemal Çalışkan on 23.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello SwiftUI")
            Text("Hello,dejkoveci!")
                .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
