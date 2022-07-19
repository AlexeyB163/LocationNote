//
//  NoteDetailsInteractor.swift
//  ToDoLocation
//
//  Created by User on 18.07.2022.
//

import Foundation

protocol NoteDetailsInteractorInputProtocol: AnyObject {
    init(presenter: NoteDetailsInteractorOutputProtocol)
    func fetchNoteData(text: String)
}

protocol NoteDetailsInteractorOutputProtocol: AnyObject {
    func notesDidReceive(text: String)
}

class NoteDetailsInteractor: NoteDetailsInteractorInputProtocol {
    
    
    weak var presenter: NoteDetailsInteractorOutputProtocol!
    
    
    required init(presenter: NoteDetailsInteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    func fetchNoteData(text: String) {
//        print("INTER \(text)")
//        presenter.notesDidReceive(text: text)
        
    }
}

//extension NoteDetailsInteractor: NoteDetailsInteractorOutputProtocol {
//
//}
