//
//  ListOfNoteCell.swift
//  ToDoLocation
//
//  Created by User on 18.07.2022.
//

import UIKit

protocol NoteCellModelRepresentable {
    var viewModel: CellIdentifiable? { get set }
}

class NoteTableViewCell: UITableViewCell, NoteCellModelRepresentable {
    var viewModel: CellIdentifiable? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let viewModel = viewModel as? NoteCellViewModel else { return }
        
        var content = defaultContentConfiguration()
        content.text = viewModel.title
        content.secondaryText = viewModel.description
        
        contentConfiguration = content
        
    }
    
    
}
