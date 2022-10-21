//
//  UserService.swift
//  ProtocolOriented
//
//  Created by Furkan Cemal Çalışkan on 21.10.2022.
//

import Foundation

protocol UserService {
    
    func fetchUser(completion: @escaping(Result<UserModel,Error>) -> Void)
    
}
