//
//  CircularImageView.swift
//  WidgetKitTest
//
//  Created by Furkan Cemal Çalışkan on 10.10.2022.
//

import SwiftUI

struct CircularImageView: View {
    
    var image : Image
    
    var body: some View {
        image.resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.red, lineWidth: 5)).shadow(radius: 15)
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(image: Image("spiderman"))
    }
}
