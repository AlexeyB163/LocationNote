//
//  ViewController.swift
//  ToDoLocation
//
//  Created by User on 15.07.2022.
//

import UIKit

protocol ListOfNotesViewInputProtocol: AnyObject {
}

protocol ListOfNotesViewOutputProtocol: AnyObject {
    init(view: ListOfNotesViewInputProtocol)
    func openDetailsNote()
    func testData(text: String)
}


class ListOfNotesViewController: UIViewController {

    var presenter: ListOfNotesViewOutputProtocol!
    var configurator: ListOfNotesConfiguratorInputProtocol = ListOfNotesConfigurator()
    
    let tableView = UITableView()
    var rows:[Note] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        setupNavigationBar()
        setupTableView()
        setupConstraint()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    deinit {
        print("ListOfNotesVC - deinint")
    }
}

extension ListOfNotesViewController: ListOfNotesViewInputProtocol {
    
}

// MARK: - Setup NavigationBar
extension ListOfNotesViewController {
    private func setupNavigationBar() {
        navigationItem.title = "List notes"
        let rightButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action:  #selector(addNote))
        navigationItem.rightBarButtonItem = rightButton
    }
    
    @objc func addNote() {
        presenter.openDetailsNote()
    }
}


// MARK: - Setup TableView
extension ListOfNotesViewController {
    private func setupTableView() {
        view.addSubview(tableView)
        tableView.register(NoteTableViewCell.self, forCellReuseIdentifier: "NoteCell")
    }

    private func setupConstraint() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension ListOfNotesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
        
    }
    
    
}
