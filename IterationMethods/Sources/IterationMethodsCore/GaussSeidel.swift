//
//  File.swift
//  
//
//  Created by Gleb Shevchenko on 5/31/20.
//

import Foundation

/// - Reference: https://en.wikipedia.org/wiki/Gauss–Seidel_method
func gaussSeidel(
    x: Double, y: Double,
    precision: Double
) {
    gaussSeidelHelper(
        x: x, y: y,
        precision: precision,
        iterationCount: 1
    )
}

fileprivate func gaussSeidelHelper(x: Double, y: Double, precision: Double, iterationCount: Int) {
    let nextX = x
        + C11 * (sin(y + 2) - y * x - 0.5)
        + C12 * (x * x + y * y - 1)
    let nextY = y
        + C21 * (sin(y + 2) - y * x - 0.5)
        + C22 * (nextX * nextX + y * y - 1)
    
    printIterationData(x: x, y: y, iterationCount: iterationCount)
    if abs(y - nextY) < precision && abs(x - nextX) < precision {
        return
    } else {
        gaussSeidelHelper(
            x: nextX, y: nextY,
            precision: precision,
            iterationCount: iterationCount + 1
        )
    }
}
