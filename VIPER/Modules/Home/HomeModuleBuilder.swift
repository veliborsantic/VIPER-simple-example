//
//  HomeModuleBuilder.swift
//  VIPER
//
//  Created by velo on 27/11/2019.
//  Copyright © 2019 velo. All rights reserved.
//

import Foundation
import UIKit

class HomeModuleBuilder {
    
    static func build() -> UIViewController {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        
        let view = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        let interactor: PresenterToInteractorProtocol = HomeInteractor()
        let presenter: ViewToPresenterProtocol & InteractorToPresenterProtocol = HomePresenter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        interactor.presenter = presenter
        return view
    }
}
