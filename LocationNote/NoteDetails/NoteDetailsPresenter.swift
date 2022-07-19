//
//  NoteDetailsPresenter.swift
//  ToDoLocation
//
//  Created by User on 18.07.2022.
//

import Foundation


class NoteDetailsPresenter: NoteDetailsViewOutputProtocol {
    
    weak var view: NoteDetailsViewInputProtocol!
    var interactor: NoteDetailsInteractorInputProtocol!
    var router: NoteDetailsRouterInputProtocol!
    
    var a = ""
    var completion:((String) -> Void)?
    
    required init(view: NoteDetailsViewInputProtocol) {
        self.view = view
    }
    
    func viewDidLoad(text: String) {
        a = text
        print(a)
    }
    
    
    
}

// MARK: - NoteDetailsInteractorOutputProtocol
extension NoteDetailsPresenter: NoteDetailsInteractorOutputProtocol {
    func notesDidReceive(text: String) {
        print("PRES \(text)")
    }
    

    

}

