//
//  NoteDetailsPresenter.swift
//  ToDoLocation
//
//  Created by User on 18.07.2022.
//

import Foundation

class NoteDetailsPresenter: NoteDetailsViewOutputProtocol {
    
    var view: NoteDetailsViewInputProtocol!
    var interactor: NoteDetailsInteractorInputProtocol!
    var router: NoteDetailsRouterInputProtocol!
    
    required init(view: NoteDetailsViewInputProtocol) {
        self.view = view
    }
}

// MARK: - NoteDetailsInteractorOutputProtocol
extension NoteDetailsPresenter: NoteDetailsInteractorOutputProtocol {
    
}
