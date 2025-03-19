//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Combine

final class ___VARIABLE_productName:identifier___ViewModel {
    typealias Substate = String
    typealias State = ViewState<Substate, Request>
    
    private let output: ___VARIABLE_productName:identifier___Output
    private let state = PassthroughSubject<State, Never>()
    private var transformCancellables = Set<AnyCancellable>()

    init(input: ___VARIABLE_productName:identifier___Input, output: ___VARIABLE_productName:identifier___Output) {
        self.output = output
    }
}

// MARK: - ViewModelProtocol

extension ___VARIABLE_productName:identifier___ViewModel: ViewModelProtocol {
    func transform(input: AnyPublisher<Request, Never>) -> AnyPublisher<State, Never> {
        transformCancellables.removeAll()
        input
            .sink { [weak self] in
                guard let self else { return }
                switch $0 {
                
                }
            }
            .store(in: &transformCancellables)

        return state.eraseToAnyPublisher()
    }
}
