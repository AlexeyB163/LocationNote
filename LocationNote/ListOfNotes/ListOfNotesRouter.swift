//
//  ListOfNotesRouter.swift
//  ToDoLocation
//
//  Created by User on 15.07.2022.
//

import Foundation
import UIKit

protocol ListOfNotesRouterInputProtocol {
    init(viewController: ListOfNotesViewController)
    func openDetailsVC(text: String)
}

class ListOfNotesRouter: ListOfNotesRouterInputProtocol {
    
    var b = ""
    weak var viewController: ListOfNotesViewController?
    
    required init(viewController: ListOfNotesViewController) {
        self.viewController = viewController
    }
       
    func openDetailsVC(text: String) {
        let detailsVC = NoteDetailsViewController()
        detailsVC.configurator.configure(with: detailsVC)
        detailsVC.presenter.viewDidLoad(text: text)
        
        detailsVC.presenter.completion = {text in
            self.b = text
            print("B \(self.b)")
        }
        
        
        let vc = UINavigationController(rootViewController: detailsVC)
        viewController?.present(vc, animated: true, completion: nil)
    }
    
    

}
