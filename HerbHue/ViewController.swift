//
//  ViewController.swift
//  HerbHue
//
//  Created by Shantalia Z on 9/23/23.
//
import UIKit

class ViewController: UIViewController {

    let terpeneTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter Terpene Name"
        return textField
    }()
    
    let searchButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Search", for: .normal)
        button.backgroundColor = .blue
        button.tintColor = .white
        button.layer.cornerRadius = 8
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        // Add TextField to the view
        view.addSubview(terpeneTextField)
        terpeneTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            terpeneTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            terpeneTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            terpeneTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
        ])
        
        // Add Search Button to the view
        view.addSubview(searchButton)
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            searchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            searchButton.topAnchor.constraint(equalTo: terpeneTextField.bottomAnchor, constant: 20),
            searchButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            searchButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        searchButton.addTarget(self, action: #selector(searchButtonTapped), for: .touchUpInside)
    }
    
    @objc func searchButtonTapped() {
        // Logic for search can be added later
    }
}
