//
//  NoteDetailsRouter.swift
//  ToDoLocation
//
//  Created by User on 18.07.2022.
//

import Foundation


protocol NoteDetailsRouterInputProtocol {
    init(viewController: NoteDetailsViewController)
    func openNotesListVC(note: Note)
}

class NoteDetailsRouter: NoteDetailsRouterInputProtocol {
    weak var viewController: NoteDetailsViewController?
    
    required init(viewController: NoteDetailsViewController) {
        self.viewController = viewController
    }
    
    func openNotesListVC(note: Note) {
        let listOfNotesVC = ListOfNotesViewController()
        listOfNotesVC.configurator.configure(with: listOfNotesVC)
        
        listOfNotesVC.presenter.testData(note: note)
    }

}
