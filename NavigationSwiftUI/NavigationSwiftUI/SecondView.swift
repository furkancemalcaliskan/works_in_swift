//
//  SecondView.swift
//  NavigationSwiftUI
//
//  Created by Furkan Cemal Çalışkan on 18.10.2022.
//

import SwiftUI

struct SecondView: View {
    
    @State var path : [Dog] = []
    
    var body: some View {
        
        NavigationStack(path: $path){
            
            List(dogs) { dog in
                NavigationLink(dog.name, value: dog)
            }.navigationDestination(for: Dog.self) { dog in
                VStack{
                    Text(dog.name)
                    Button("Back") {
                        
                        self.path = []
                        
                    }
                }
            }
            
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
