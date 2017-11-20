//
//  ViewController.swift
//  FunFact
//
//  Created by Amir Ghoreshi on 09/11/2017.
//  Copyright © 2017 Amir Ghoreshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let titleLabel: FactLabel = FactLabelProvider.create("Did you know?")
    let factLabel: FactLabel = FactLabelProvider.create(FactProvider().randomFact())
    let button: FactButton = FactButtonProvider.create("Click me!")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        addConstraints()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        setRandomColor()
    }

    // MARK: Actions
    
    @objc func click() {
        factLabel.text = FactProvider().randomFact()
        setRandomColor()
    }
    
    // MARK: Helper
    
    func setRandomColor() -> () {
        let randomColor = ColorProvider().randomColor()
        button.setTintColor(randomColor)
        view.backgroundColor = randomColor
    }
    
    func addSubviews() -> () {
        titleLabel.alpha = 0.5
        
        view.addSubview(titleLabel)
        view.addSubview(factLabel)
        
        button.addTarget(self, action: #selector(click), for: .touchUpInside)
        view.addSubview(button)
    }
    
    func addConstraints() -> () {
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  20).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 80).isActive = true
        
        factLabel.topAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        factLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  20).isActive = true
        factLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  20).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        button.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -80).isActive = true
        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
}
