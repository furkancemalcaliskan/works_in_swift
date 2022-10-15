//
//  FifthView.swift
//  FirstSwiftUIApp
//
//  Created by Furkan Cemal Çalışkan on 25.09.2022.
//

import SwiftUI

struct FifthView: View {
    
    @State var name = "Furkan"
    
    var body: some View {
        
        VStack {
            Text(name)
                .font(.largeTitle)
                .padding()
            
            TextField("placeholder",text: $name)
        }
        
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}
