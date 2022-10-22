//
//  RootViewController.swift
//  loginProtocolOriented
//
//  Created by Furkan Cemal Çalışkan on 21.10.2022.
//

import UIKit

class RootViewController: UIViewController, RootViewModelOutput {
    
    private let viewModel : RootViewModel

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .yellow
        viewModel.checkLogin()
    }
    
    init(viewModel: RootViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func showMainApp() {
        
        let mainViewController = MainViewController()
        navigationController?.present(mainViewController, animated: true)
        
    }
    
    func showLogin() {
        
        let loginViewController = LoginViewController()
        navigationController?.present(loginViewController, animated: true)
        
    }


}

