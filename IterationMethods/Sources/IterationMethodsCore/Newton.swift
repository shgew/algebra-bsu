//
//  Newton.swift
//  
//
//  Created by Gleb Shevchenko on 5/31/20.
//

import Foundation

/// - Reference: https://en.wikipedia.org/wiki/Newton%27s_method
public func newton(
    x: Double, y: Double,
    precision: Double
) {
    newtonHelper(
        x: x, y: y,
        precision: precision,
        iterationCount: 1
    )
}

fileprivate func newtonHelper(x: Double, y: Double, precision: Double, iterationCount: Int) {
    let multiplier = 1 / (-2 * x * x + 2 * x * cos(y + 2) + 2 * y * y)
    let nextX = x - multiplier * ((x * x + y * y - 1) * (cos(y + 2) - x) - 2 * y * (sin(y + 2) - y * x - 0.5))
    let nextY = y - multiplier * (y * (x * x + y * y - 1) + 2 * x * (sin(y + 2) - y * x - 0.5))
    
    printIterationData(x: nextX, y: nextY, iterationCount: iterationCount)
    if (abs(y - nextY) < precision && abs(x - nextX) < precision) {
        return
    } else {
        newtonHelper(
            x: nextX, y: nextY,
            precision: precision,
            iterationCount: iterationCount + 1
        )
    }
}
