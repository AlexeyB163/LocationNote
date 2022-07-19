//
//  NoteDetailsRouter.swift
//  ToDoLocation
//
//  Created by User on 18.07.2022.
//

import Foundation


protocol NoteDetailsRouterInputProtocol {
    init(viewController: NoteDetailsViewController)
    func openNotesListVC(text: String)
}

class NoteDetailsRouter: NoteDetailsRouterInputProtocol {
    weak var viewController: NoteDetailsViewController?
    
    required init(viewController: NoteDetailsViewController) {
        self.viewController = viewController
    }
    
    func openNotesListVC(text: String) {
        let listOfNotesVC = ListOfNotesViewController()
        listOfNotesVC.configurator.configure(with: listOfNotesVC)
        
        listOfNotesVC.presenter.testData(text: text)
    }

}
