//
//  NoteCellViewModel.swift
//  ToDoLocation
//
//  Created by User on 18.07.2022.
//

import Foundation

protocol CellIdentifiable {
    var cellIdentifier: String { get }
    var cellHeight: Double { get }
}

class NoteCellViewModel: CellIdentifiable {
    
    let title: String
    let description: String
    
    var cellIdentifier: String {
        "NoteCell"
    }
    
    var cellHeight: Double {
        100
    }
    
    init(note: Note) {
        self.title = note.title
        self.description = note.description
    }
    
    
}
