//
//  NoteDetailsConfigurator.swift
//  ToDoLocation
//
//  Created by User on 18.07.2022.
//

import Foundation
protocol NoteDetailsConfiguratorInputProtocol {
    func configure(with viewController: NoteDetailsViewController)
}

class NoteDetailsConfigurator: NoteDetailsConfiguratorInputProtocol {
    func configure(with viewController: NoteDetailsViewController) {
        let presenter = NoteDetailsPresenter(view: viewController)
        let interactor = NoteDetailsInteractor(presenter: presenter)
        let router = NoteDetailsRouter(viewController: viewController)
           
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
