//
//  ViewController.swift
//  FunFact
//
//  Created by Amir Ghoreshi on 09/11/2017.
//  Copyright © 2017 Amir Ghoreshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var titleLabel: FactLabel = FactLabelProvider.create("Did you know?")
    var factLabel: FactLabel = FactLabelProvider.create(FactProvider().randomFact())
    var button: FactButton = FactButtonProvider.create("Click me!")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.alpha = 0.5
        
        view.addSubview(titleLabel)
        
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  20).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 80).isActive = true
        
        view.addSubview(factLabel)
        
        factLabel.topAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        factLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  20).isActive = true
        factLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        button.setTintColor(view.tintColor)
        button.addTarget(self, action: #selector(click), for: .touchUpInside)

        view.addSubview(button)
        
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  20).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        button.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -80).isActive = true
        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setRandomColor()
    }

    @objc func click() {
        factLabel.text = FactProvider().randomFact()
        setRandomColor()
    }
    
    func setRandomColor() -> () {
        let randomColor = ColorProvider().randomColor()
        button.setTintColor(randomColor)
        view.backgroundColor = randomColor
    }
}
