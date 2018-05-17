//
//  Calculator.swift
//  w5d4-demo
//
//  Created by Roland on 2017-10-31.
//  Copyright © 2017 Roland. All rights reserved.
//

import Foundation

class Calculator {
    
    func add(augend: Int, addend: Int) -> Int {
        let sum = augend + addend
        return sum
    }
    
    func subtract(minuend: Int, subtrahend: Int) -> Int {
        let difference = minuend - subtrahend
        return difference
    }
    
    func multiply(multiplicand: Int, multiplier: Int) -> Int {
        let product = multiplicand * multiplier
        return product
    }
    
    func divide(dividend: Int, divisor: Int) -> (quotient: Int, remainder: Int)? {
        guard divisor != 0 else {
            return nil
        }
        let quotient = dividend / divisor
        let remainder = dividend - (quotient * divisor)
        return (quotient: quotient, remainder: remainder)
    }
}
