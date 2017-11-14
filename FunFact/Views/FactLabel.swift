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
}
