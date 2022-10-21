//
//  UserViewModel.swift
//  ProtocolOriented
//
//  Created by Furkan Cemal Çalışkan on 21.10.2022.
//

import Foundation

class UserViewModel {
    
    private let userService : UserService
    
    init(userService: UserService) {
        
        self.userService = userService
        
    }
    
    
    func fetchUsers() {
        
        userService.fetchUser { result in
            switch result {
            case .success(let user):
                print(user)
            case .failure(_):
                print("error")
                
            }
        }
        
    }
    
}
