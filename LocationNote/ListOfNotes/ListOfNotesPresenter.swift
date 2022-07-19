//
//  ListOfNotesPresentor.swift
//  ToDoLocation
//
//  Created by User on 15.07.2022.
//

import Foundation



class ListOfNotesPresenter: ListOfNotesViewOutputProtocol {

   weak var view: ListOfNotesViewInputProtocol!
    var interactor: ListOfNotesInteractorInputProtocol!
    var router: ListOfNotesRouterInputProtocol!
    
    var test = "$$$"
    var test2:Note?
    
    
    
    required init(view: ListOfNotesViewInputProtocol) {
        self.view = view
    }
    
    func openDetailsNote() {
        router.openDetailsVC(text: test)
    }
    func testData(note: Note) {
        test2 = note
        print("test2 \(test2)")
    }
}


// MARK: - ListOfNotesInteractorOutputProtocol
extension ListOfNotesPresenter: ListOfNotesInteractorOutputProtocol {
   
}
