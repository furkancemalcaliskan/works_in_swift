//
//  ProtocolOrientedTests.swift
//  ProtocolOrientedTests
//
//  Created by Furkan Cemal Çalışkan on 21.10.2022.
//

import XCTest
@testable import ProtocolOriented

final class ProtocolOrientedTests: XCTestCase {
    
    private var sut : UserViewModel!
    private var userService : MockUserService!
    private var output : MockUserViewModelOutput!

    override func setUpWithError() throws {
        userService = MockUserService()
        sut = UserViewModel(userService: userService)
        output = MockUserViewModelOutput()
        sut.output = output
    }

    override func tearDownWithError() throws {
        userService = nil
        sut = nil
    }

    func testUpdateView_whenAPISuccess_showEmailNameUserName() throws {
        let mockUser = UserModel(id: 1, name: "Furkan", username: "dejkoveci", email: "dejkoveci@test.com", address: Address(street: "", suite: "", city: "", zipcode: "", geo: Geo(lat: "", lng: "")), phone: "+900000000000", website: "dejkoveci.com", company: Company(name: "dejCorp", catchPhrase: "", bs: ""))
        
        userService.fetchUserMockResult = .success(mockUser)
        
        sut.fetchUsers()
        
        XCTAssertEqual(output.updateViewArray.first?.username, "dejkoveci")
        
    }
    
    func testUpdateView_whenAPIFailure_showNoUser() throws {
        userService.fetchUserMockResult = .failure(NSError())
        sut.fetchUsers()
        XCTAssertEqual(output.updateViewArray.first?.name, "No User")
    }

}

class MockUserService : UserService {
    var fetchUserMockResult : Result<ProtocolOriented.UserModel, Error>?
    func fetchUser(completion: @escaping (Result<ProtocolOriented.UserModel, Error>) -> Void) {
        if let result = fetchUserMockResult {
            completion(result)
        }
    }
}

class MockUserViewModelOutput : UserViewModelOutput {
    
    var updateViewArray : [(name: String, email: String, username: String)] = []
    
    func updateView(name: String, email: String, username: String) {
        updateViewArray.append((name,email,username))
    }
    
}

