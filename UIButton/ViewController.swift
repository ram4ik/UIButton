//
//  ViewController.swift
//  UIButton
//
//  Created by ramil on 12.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var button: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .orange
        button.layer.cornerRadius = 25
        button.setTitle("Change", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(changeLabel), for: .touchUpInside)
        return button
    }()
    
    var textBox: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter text"
        tf.textAlignment = .center
        tf.layer.borderWidth = 1
        tf.layer.cornerRadius = 25
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Please enter text"
        label.font = UIFont.boldSystemFont(ofSize: 35)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
    }
    
    func setUI() {
        view.addSubview(button)
        view.addSubview(textBox)
        view.addSubview(label)
        
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        textBox.widthAnchor.constraint(equalToConstant: view.frame.width - 20).isActive = true
        textBox.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textBox.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textBox.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -10).isActive = true
        
        label.bottomAnchor.constraint(equalTo: textBox.topAnchor, constant: -100).isActive = true
        label.centerXAnchor.constraint(equalTo: button.centerXAnchor).isActive = true
    }
    
    @objc func changeLabel() {
        print("Button pressed")
        label.text = textBox.text
        textBox.text = ""
    }


}

