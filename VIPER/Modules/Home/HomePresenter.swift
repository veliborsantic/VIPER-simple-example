//
//  HomePresenter.swift
//  VIPER
//
//  Created by velo on 27/11/2019.
//  Copyright © 2019 velo. All rights reserved.
//

import Foundation

class HomePresenter: ViewToPresenterProtocol {
    
    weak var view: PresenterToViewProtocol?
    var interactor: PresenterToInteractorProtocol?

    func viewDidLoad() {
        interactor?.getText()
    }
}

extension HomePresenter: InteractorToPresenterProtocol {
    func gotText(text: String) {
        view?.updateLabel(text: text)
    }
}
