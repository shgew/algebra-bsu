//
//  main.swift
//  
//
//  Created by Gleb Shevchenko on 5/31/20.
//

import IterationMethodsCore

let separator = "================================"

let x = 0.96
let y = 0.27
let precision = 10e-5

fixedPointIteration(x: x, y: y, precision: precision)
print(separator)
gaussSeidel(x: x, y: y, precision: precision)
print(separator)
newton(x: x, y: y, precision: precision)
