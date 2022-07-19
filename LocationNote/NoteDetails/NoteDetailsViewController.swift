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
    
    let textView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        setupTextView()
        setupConstraits()
    }
}

// MARK: - Setup TextView
extension NoteDetailsViewController {
    
    private func setupTextView() {
        view.addSubview(textView)
        textView.backgroundColor = .cyan
    }
    
    private func setupConstraits() {
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        textView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        textView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
}

// MARK: - Setup NavigationBar
extension NoteDetailsViewController {
    
}


extension NoteDetailsViewController: NoteDetailsViewInputProtocol {
    
}
