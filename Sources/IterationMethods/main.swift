//
//  main.swift
//  
//
//  Created by Gleb Shevchenko on 5/31/20.
//

import IterationMethodsCore

let separator = "================================"

let startX = 0.96
let startY = 0.27
let precision = 10e-5

fixedPointIteration(startX: startX, startY: startY, precision: precision)
print(separator)
gaussSeidel(startX: startX, startY: startY, precision: precision)
print(separator)
newton(startX: startX, startY: startY, precision: precision)
