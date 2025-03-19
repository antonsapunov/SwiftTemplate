//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

final class ___VARIABLE_productName:identifier___Coordinator: Coordinator {
    private let navigationController: UINavigationController
    private let factory: ___VARIABLE_productName:identifier___FactoryProtocol

    init(
        navigationController: UINavigationController,
        factory: ___VARIABLE_productName:identifier___FactoryProtocol
    ) {
        self.navigationController = navigationController
        self.factory = factory
    }
    
    func start() {
        let output = ___VARIABLE_productName:identifier___Output()

        let viewController = factory.makeViewController(output: output)

        DispatchQueue.main.async {
            self.navigationController.pushViewController(viewController, animated: true)
        }
    }
}
