//
//  NoteDetailsInteractor.swift
//  ToDoLocation
//
//  Created by User on 18.07.2022.
//

import Foundation

protocol NoteDetailsInteractorInputProtocol: AnyObject {
    init(presenter: NoteDetailsInteractorOutputProtocol)
    func fetchNote(text: String)
}

protocol NoteDetailsInteractorOutputProtocol: AnyObject {
    func noteDidReceive(note: Note)
}

class NoteDetailsInteractor: NoteDetailsInteractorInputProtocol {
    
    
    weak var presenter: NoteDetailsInteractorOutputProtocol!
    
    
    required init(presenter: NoteDetailsInteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    func fetchNote(text: String) {
        let note = Note(title: "", description: text)
        presenter.noteDidReceive(note: note)
    }
}

//extension NoteDetailsInteractor: NoteDetailsInteractorOutputProtocol {
//
//}
