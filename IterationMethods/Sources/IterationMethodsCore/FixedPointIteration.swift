//
//  IterationMethods.swift
//  
//
//  Created by Gleb Shevchenko on 5/31/20.
//

import Foundation

/// - Reference: https://en.wikipedia.org/wiki/Fixed-point_iteration
@discardableResult
public func fixedPointIteration(
    x: Double, y: Double,
    precision: Double
) -> (x: Double, y: Double) {
    var newX = x
    var newY = y
    
    var lastX: Double
    var lastY: Double
    
    var iterationCount: UInt64 = 1
    repeat {
        lastX = newX
        lastY = newY
        
        newX = newX 
            + C11 * (sin(lastY + 2) - lastY * lastX - 0.5)
            + C12 * (lastX * lastX + lastY * lastY - 1)
        newY = newY
            + C21 * (sin(lastY + 2) - lastY * lastX - 0.5)
            + C22 * (lastX * lastX + lastY * lastY - 1)
        
        printIterationData(x: newX, y: newY, iterationCount: iterationCount)
        iterationCount += 1
    } while abs(newY - lastY) >= precision || abs(newX - lastX) >= precision
    
    return (newX, newX)
}
