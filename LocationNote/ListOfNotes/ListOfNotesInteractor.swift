//
//  ListOfNotesInteractor.swift
//  ToDoLocation
//
//  Created by User on 15.07.2022.
//

import Foundation
protocol ListOfNotesInteractorInputProtocol: AnyObject {
    init(presenter: ListOfNotesInteractorOutputProtocol)
    func rrr(str: String)
}

protocol ListOfNotesInteractorOutputProtocol: AnyObject {
    func updateView(ccc: String)
}


class ListOfNotesInteractor: ListOfNotesInteractorInputProtocol {
    
    
    

    var presenter: ListOfNotesInteractorOutputProtocol!
    var b = "bbb"
    
    required init(presenter: ListOfNotesInteractorOutputProtocol) {
        self.presenter = presenter
    }
    func rrr(str: String) {
        b = str
        print("---interactor---- \(b)")
        print(presenter)
        updateView(ccc: b)
    }

}

extension ListOfNotesInteractor: ListOfNotesInteractorOutputProtocol {
    func updateView(ccc: String) {
        presenter.updateView(ccc: ccc)
    }
    
    
    

}
