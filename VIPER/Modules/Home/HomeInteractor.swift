//
//  HomeInteractor.swift
//  VIPER
//
//  Created by velo on 27/11/2019.
//  Copyright © 2019 velo. All rights reserved.
//

import Foundation

class HomeInteractor: PresenterToInteractorProtocol {
    
    var presenter: InteractorToPresenterProtocol?

    func getText() {
        presenter?.gotText(text: "Hello Viper")
    }
}

