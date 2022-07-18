//
//  NoteDetailsViewController.swift
//  ToDoLocation
//
//  Created by User on 18.07.2022.
//

import Foundation
import UIKit

protocol NoteDetailsViewInputProtocol: AnyObject {
   
}

protocol NoteDetailsViewOutputProtocol: AnyObject {
    init(view: NoteDetailsViewInputProtocol)
   
}

class NoteDetailsViewController: UIViewController {
    
    var presenter: NoteDetailsViewOutputProtocol!
    var configurator: NoteDetailsConfiguratorInputProtocol = NoteDetailsConfigurator()
}

extension NoteDetailsViewController: NoteDetailsViewInputProtocol {
    
}
