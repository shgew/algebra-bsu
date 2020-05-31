//
//  IterationMethods.swift
//  
//
//  Created by Gleb Shevchenko on 5/31/20.
//

import Foundation

/// - Reference: https://en.wikipedia.org/wiki/Fixed-point_iteration
public func fixedPointIteration(
    x: Double, y: Double,
    precision: Double
) {
    fixedPointIterationHelper(
        x: x, y: y,
        precision: precision,
        iterationCount: 1
    )
}

/// Helper for recursion.
fileprivate func fixedPointIterationHelper(
    x: Double, y: Double,
    precision: Double, iterationCount: Int
) {
    let nextX = x
        + C11 * (sin(y + 2) - y * x - 0.5)
        + C12 * (x * x + y * y - 1)
    let nextY = y
        + C21 * (sin(y + 2) - y * x - 0.5)
        + C22 * (x * x + y * y - 1)
    
    printIterationData(x: nextX, y: nextY, iterationCount: iterationCount)
    if abs(y - nextY) < precision && abs(x - nextX) < precision {
        return
    } else {
        fixedPointIterationHelper(
            x: nextX, y: nextY,
            precision: precision,
            iterationCount: iterationCount + 1
        )
    }
}
