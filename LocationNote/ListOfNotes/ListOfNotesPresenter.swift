//
//  ListOfNotesPresentor.swift
//  ToDoLocation
//
//  Created by User on 15.07.2022.
//

import Foundation



class ListOfNotesPresenter: ListOfNotesViewOutputProtocol {

    var view: ListOfNotesViewInputProtocol!
    var interactor: ListOfNotesInteractorInputProtocol!
    var router: ListOfNotesRouterInputProtocol!
    
    var test = "@@@"
    
    
    
    required init(view: ListOfNotesViewInputProtocol) {
        self.view = view
    }
    
    func openDetailsNote() {
        router.openDetailsVC(text: test)
    }
    
}


// MARK: - ListOfNotesInteractorOutputProtocol
extension ListOfNotesPresenter: ListOfNotesInteractorOutputProtocol {
   
}
