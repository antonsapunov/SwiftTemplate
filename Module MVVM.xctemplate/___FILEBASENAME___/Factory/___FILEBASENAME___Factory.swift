//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

final class ___VARIABLE_productName:identifier___Factory: ___VARIABLE_productName:identifier___FactoryProtocol {

    func makeViewController(output: ___VARIABLE_productName:identifier___Output) -> UIViewController {
        let input = ___VARIABLE_productName:identifier___Input()
        let viewModel = ___VARIABLE_productName:identifier___ViewModel(input: input, output: output)
        let viewController = ___VARIABLE_productName:identifier___ViewController(viewModel: viewModel)
        return viewController
    }
}
