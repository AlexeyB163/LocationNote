//
//  ViewController.swift
//  ToDoLocation
//
//  Created by User on 15.07.2022.
//

import UIKit

protocol ListOfNotesViewInputProtocol: AnyObject {
    func updateSt(aa: String)
}

protocol ListOfNotesViewOutputProtocol: AnyObject {
    init(view: ListOfNotesViewInputProtocol)
    func viewDidLoad(stri: String)
}


class ListOfNotesViewController: UIViewController {

    var presenter: ListOfNotesViewOutputProtocol!
    var configurator: ListOfNotesConfiguratorInputProtocol = ListOfNotesConfigurator()
    
    let tableView = UITableView()
    var rows:[Note] = []
    
    let a = "test"
    var b = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        presenter.viewDidLoad(stri: a)
    }


}

// MARK: - Setup TableView
extension ListOfNotesViewController {
    
}

extension ListOfNotesViewController: ListOfNotesViewInputProtocol {
    func updateSt(aa: String) {
        b = aa
        print("VIEW b \(b)")
    }
    
    
}
