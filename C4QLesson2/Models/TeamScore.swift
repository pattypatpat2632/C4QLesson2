//
//  TeamScore.swift
//  C4QLesson2
//
//  Created by Patrick O'Leary on 10/12/17.
//  Copyright © 2017 Patrick O'Leary. All rights reserved.
//

import Foundation

struct TeamScore {
    var runs: Int = 0
    var hits: Int = 0
    var errors: Int = 0
    
    mutating func hit() {
        self.hits += 1
    }
    
    mutating func run() {
        self.runs += 1
    }
    
    mutating func error() {
        self.errors += 1
    }
}
