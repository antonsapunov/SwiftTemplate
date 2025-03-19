//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//


import SnapKit
import UIKit

final class ___VARIABLE_productName:identifier___ViewController: BaseBankViewController<___VARIABLE_productName:identifier___ViewModel> {

    // MARK: - Subviews

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        configureTheme()
    }
    
    // MARK: - Internal methods

    override func render(state: ViewState<Substate, Request>) {
        switch state {
        case .idle:
            stopAnimationWithText()
        case .loading:
            startAnimationWithText()
        case let .failed(error, request):
            stopAnimationWithText()
            handle(error, request)
        case let .ready(substate):
            render(substate: substate)
        }
    }
}

// MARK: - Private

extension ___VARIABLE_productName:identifier___ViewController {
    private func render(substate: Substate) {
    }

    private func setupUI() {
        
    }
}

// MARK: - ThemeProtocol

extension ___VARIABLE_productName:identifier___ViewController: ThemeProtocol {
    func configureTheme() {
    }
}
