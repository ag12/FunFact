//
//  FactLabel.swift
//  FunFact
//
//  Created by Amir Ghoreshi on 10/11/2017.
//  Copyright © 2017 Amir Ghoreshi. All rights reserved.
//

import UIKit

class FactLabel: UILabel {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() -> () {
        translatesAutoresizingMaskIntoConstraints = false;
    }
    
    
    static func create(_ text: String) -> FactLabel {
        let label = FactLabel()
        label.text = text
        label.textColor = .white
        label.font = label.font.withSize(18)
        label.numberOfLines = 0
        return label;
    }
    
    
}
