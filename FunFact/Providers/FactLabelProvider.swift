//
//  FactProviderLabel.swift
//  FunFact
//
//  Created by Amir Ghoreshi on 14/11/2017.
//  Copyright © 2017 Amir Ghoreshi. All rights reserved.
//

import UIKit

struct FactLabelProvider {
    
    static func create(_ text: String) -> FactLabel {
        let label = FactLabel()
        label.text = text
        label.textColor = .white
        label.font = label.font.withSize(18)
        label.numberOfLines = 0
        return label;
    }
}
