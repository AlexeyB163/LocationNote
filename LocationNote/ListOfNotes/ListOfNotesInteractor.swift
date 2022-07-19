//
//  ListOfNotesInteractor.swift
//  ToDoLocation
//
//  Created by User on 15.07.2022.
//

import Foundation
protocol ListOfNotesInteractorInputProtocol: AnyObject {
    init(presenter: ListOfNotesInteractorOutputProtocol)
}

protocol ListOfNotesInteractorOutputProtocol: AnyObject {

}


class ListOfNotesInteractor: ListOfNotesInteractorInputProtocol {
    
    
    

    var presenter: ListOfNotesInteractorOutputProtocol!
    
    required init(presenter: ListOfNotesInteractorOutputProtocol) {
        self.presenter = presenter
    }
    

}

extension ListOfNotesInteractor: ListOfNotesInteractorOutputProtocol {
    

}
