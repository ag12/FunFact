//
//  Utils.swift
//  FunFact
//
//  Created by Amir Ghoreshi on 10/11/2017.
//  Copyright © 2017 Amir Ghoreshi. All rights reserved.
//

import GameKit

struct Utils {
    
    func randomNumber(_ upperBound: Int) -> Int {
        return GKRandomSource.sharedRandom().nextInt(upperBound: upperBound)
    }
}
