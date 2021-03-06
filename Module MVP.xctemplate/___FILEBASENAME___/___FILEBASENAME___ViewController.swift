//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Anton
//

import UIKit

class ___VARIABLE_productName:identifier___ViewController: UIViewController, ___VARIABLE_productName:identifier___ViewControllerDelegate {

    private var presenter: ___VARIABLE_productName:identifier___Presenter

    init(presenter: ___VARIABLE_productName:identifier___Presenter) {
        self.presenter = presenter
        super.init(nibName: String(describing: ___VARIABLE_productName:identifier___ViewController.self), bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.delegate = self
        presenter.viewDidLoad()
    }

}
