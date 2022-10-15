//
//  SecondView.swift
//  FirstSwiftUIApp
//
//  Created by Furkan Cemal Çalışkan on 25.09.2022.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Image("furkan")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.3)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
