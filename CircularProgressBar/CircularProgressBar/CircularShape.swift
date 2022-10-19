//
//  CircularShape.swift
//  CircularProgressBar
//
//  Created by Furkan Cemal Çalışkan on 19.10.2022.
//

import Foundation
import SwiftUI

struct CircularShape: Shape {
    
    var percent : Double
    var startAngle : Double
    
    typealias AnimatableData = Double
    var animatableData: Double {
        get {
            return percent
        }
        set {
            percent = newValue
        }
        
    }
    
    init(percent: Double = 100, startAngle: Double = -90) {
        
        self.percent = percent
        self.startAngle = startAngle
    }
    
    func path(in rect: CGRect) -> Path {
        return Path { path in
            
            let width = rect.width
            let height = rect.height
            let radius = min(width,height) / 2
            let center = CGPoint(x: width / 2, y: height / 2)
            let endAngle = (self.percent / 100 * 360) + self.startAngle
            
            path.addArc(center: center, radius: radius, startAngle: Angle(degrees: startAngle), endAngle: Angle(degrees: endAngle), clockwise: false)
            
        }
    }
    
    
}
