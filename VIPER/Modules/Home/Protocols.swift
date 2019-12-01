//
//  Protocols.swift
//  VIPER
//
//  Created by velo on 30/11/2019.
//  Copyright © 2019 velo. All rights reserved.
//


protocol ViewToPresenterProtocol: class {
    var view: PresenterToViewProtocol? { get set }
    var interactor: PresenterToInteractorProtocol? { get set }
    func viewDidLoad()

}

protocol PresenterToViewProtocol: class {
    func updateLabel(text: String)
}

protocol PresenterToInteractorProtocol: class {
    var presenter: InteractorToPresenterProtocol? { get set }

    func getText()
}

protocol InteractorToPresenterProtocol: class {
    func gotText(text: String)
}
