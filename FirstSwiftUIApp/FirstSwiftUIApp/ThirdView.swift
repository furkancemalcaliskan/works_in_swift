//
//  ThirdView.swift
//  FirstSwiftUIApp
//
//  Created by Furkan Cemal Çalışkan on 25.09.2022.
//

import SwiftUI

struct ThirdView: View {
    
    let myArray = ["Furkan","Cemal","Caliskan","Dejkoveci"]
    
    var body: some View {
        
        List(myArray, id: \.self) { element in
            Image("furkan").resizable().aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
            Text(element).font(.largeTitle)
        }
        
        /*
        List {
            
            ForEach(myArray, id: \.self) { element in
                
                Text(element)
                
            }
         
            
        }
         */
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
