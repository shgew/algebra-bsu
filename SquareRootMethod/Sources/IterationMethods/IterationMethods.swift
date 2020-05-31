//
//  IterationMethods.swift
//  
//
//  Created by Gleb Shevchenko on 5/31/20.
//

import Numerics

fileprivate enum Constants {
    static let C11 = -0.184
    static let C12 = -0.546
    static let C21 = 0.654
    static let C22 = 0.092
}

/// Reference: https://en.wikipedia.org/wiki/Fixed-point_iteration
public func fixedPointIteration(x1: Real, x2: Real, e: Real, count: Int) {
    
    let nextX1 = x1 + Constants.C11
}
