//
//  HomeView.swift
//  VIPER
//
//  Created by velo on 27/11/2019.
//  Copyright © 2019 velo. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
       
    var presenter: ViewToPresenterProtocol?
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

extension HomeViewController: PresenterToViewProtocol {
    func updateLabel (text: String) {
        print(text)
            self.helloLabel.text = text
    }
}
