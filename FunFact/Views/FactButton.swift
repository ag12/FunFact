//
//  FactButton.swift
//  FunFact
//
//  Created by Amir Ghoreshi on 10/11/2017.
//  Copyright © 2017 Amir Ghoreshi. All rights reserved.
//

import UIKit

class FactButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() -> () {
        //setup
        translatesAutoresizingMaskIntoConstraints = false;
    }
    
    func setTintColor(_ color: UIColor) -> () {
        setTitleColor(color, for: .normal)
    }
    
    static func create(title: String, titleColor: UIColor) -> FactButton {
        let button = FactButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.setTitleColor(UIColor.white, for: .highlighted)
        button.backgroundColor = .white
        button.titleLabel?.font = button.titleLabel?.font.withSize(18)
        return button
    }
    

    
    
}
