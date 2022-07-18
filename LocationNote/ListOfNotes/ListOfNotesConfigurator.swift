//
//  ListOfNotesConfigurator.swift
//  ToDoLocation
//
//  Created by User on 15.07.2022.
//

import Foundation
protocol ListOfNotesConfiguratorInputProtocol {
    func configure(with viewController: ListOfNotesViewController)
}

class ListOfNotesConfigurator: ListOfNotesConfiguratorInputProtocol {
    func configure(with viewController: ListOfNotesViewController) {
        let presenter = ListOfNotesPresenter(view: viewController)
        let interactor = ListOfNotesInteractor(presenter: presenter)
           let router = ListOfNotesRouter()
           
           viewController.presenter = presenter
           presenter.interactor = interactor
           presenter.router = router
    }
}
