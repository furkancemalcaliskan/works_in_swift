//
//  UserViewModelOutput.swift
//  ProtocolOriented
//
//  Created by Furkan Cemal Çalışkan on 21.10.2022.
//

import Foundation

protocol UserViewModelOutput : AnyObject {
    
    func updateView(name: String, email: String, username: String)
    
}
