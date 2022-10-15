//
//  FourthView.swift
//  FirstSwiftUIApp
//
//  Created by Furkan Cemal Çalışkan on 25.09.2022.
//

import SwiftUI

struct FourthView: View {
    
    @State var myName = "Furkan"
    
    var body: some View {
        
        VStack{
            
            Text(myName).font(.largeTitle).padding()
            
            Button(action: {
                self.myName = "James"
            }) {
                Text("myButton")
            }

        }
        
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
