//
//  NoteDetailsInteractor.swift
//  ToDoLocation
//
//  Created by User on 18.07.2022.
//

import Foundation

protocol NoteDetailsInteractorInputProtocol: AnyObject {
    init(presenter: NoteDetailsInteractorOutputProtocol)
    
}

protocol NoteDetailsInteractorOutputProtocol: AnyObject {

}

class NoteDetailsInteractor: NoteDetailsInteractorInputProtocol {
    
    
    var presenter: NoteDetailsInteractorOutputProtocol!
    
    
    required init(presenter: NoteDetailsInteractorOutputProtocol) {
        self.presenter = presenter
    }
    
}

extension NoteDetailsInteractor: NoteDetailsInteractorOutputProtocol {
    
}
