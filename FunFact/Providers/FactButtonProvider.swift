//
//  File.swift
//  FunFact
//
//  Created by Amir Ghoreshi on 14/11/2017.
//  Copyright © 2017 Amir Ghoreshi. All rights reserved.
//

import UIKit

struct FactButtonProvider {
    
    static func create(_ title: String) -> FactButton {
        let button = FactButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.white, for: .highlighted)
        button.backgroundColor = .white
        button.titleLabel?.font = button.titleLabel?.font.withSize(18)
        return button
    }
}
