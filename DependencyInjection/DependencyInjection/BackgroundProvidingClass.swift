//
//  BackgroundProvidingClass.swift
//  DependencyInjection
//
//  Created by Furkan Cemal Çalışkan on 20.10.2022.
//

import Foundation
import UIKit

class BackgroundProvidingClass : BackgroundProviderProtocol {
    
    var backgroundColor: UIColor {
        
        let backgroundColors : [UIColor] = [.systemGray,.systemRed,.systemMint,.systemCyan]
        return backgroundColors.randomElement()!
        
    }
    
}
