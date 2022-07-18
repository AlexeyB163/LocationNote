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
    
    required init(view: ListOfNotesViewInputProtocol) {
        self.view = view
    }

    
    func viewDidLoad(stri: String) {
        print("---presrnter---- \(stri)")
        interactor.rrr(str: stri)
    }
    
}


// MARK: - ListOfNotesInteractorOutputProtocol
extension ListOfNotesPresenter: ListOfNotesInteractorOutputProtocol {
   
    
    func updateView(ccc: String) {
        view.updateSt(aa: ccc)
    }
}
