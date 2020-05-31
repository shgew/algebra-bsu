//
//  Newton.swift
//  
//
//  Created by Gleb Shevchenko on 5/31/20.
//

import Foundation

/// - Reference: https://en.wikipedia.org/wiki/Newton%27s_method
@discardableResult
public func newton(startX: Double, startY: Double, precision: Double) -> (x: Double, y: Double) {
    var newX = startX
    var newY = startY

    var lastX: Double
    var lastY: Double

    var iterationCount: UInt64 = 1
    repeat {
        lastX = newX
        lastY = newY

        let multiplier = 1 / (-2 * lastX * lastX + 2 * lastX * cos(lastY + 2) + 2 * lastY * lastY)

        newX = lastX - multiplier * ((lastX * lastX + lastY * lastY - 1) * (cos(lastY + 2) - lastX) - 2 * lastY * (sin(lastY + 2) - lastY * lastX - 0.5))
        newY = lastY - multiplier * (lastY * (lastX * lastX + lastY * lastY - 1) + 2 * lastX * (sin(lastY + 2) - lastY * lastX - 0.5))

        printIterationData(x: newX, y: newY, iterationCount: iterationCount)
        iterationCount += 1
    } while abs(newY - lastY) >= precision || abs(newX - lastX) >= precision

    return (newX, newY)
}
