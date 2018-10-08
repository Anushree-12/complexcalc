//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    func add(_ elements: [Int]) -> Int {
        var result: Int = 0
        for i in elements {
            result = result + i
        }
        return result
    }
    
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func add(lhs: Dictionary<String, Int>, rhs: Dictionary<String, Int>) -> [String:Int] {
        let result = ["x": lhs["x"]! + rhs["x"]!, "y": lhs["x"]! + rhs["y"]!]
        return result
        
    }
    
    func add(lhs: (x: Int, y: Int), rhs: (x: Int, y: Int)) -> (Int, Int) {
        let resultX = lhs.x + rhs.x
        let resultY = lhs.y + rhs.y
        return (resultX, resultY)
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func subtract(lhs: Dictionary<String, Int>, rhs: Dictionary<String, Int>) -> [String:Int] {
        let result = ["x": lhs["x"]! - rhs["x"]!, "y": lhs["x"]! - rhs["y"]!]
        return result
    }
    
    func subtract(lhs: (x: Int, y: Int), rhs: (x: Int, y: Int)) -> (Int, Int) {
        let resultX = lhs.x - rhs.x
        let resultY = lhs.y - rhs.y
        return (resultX, resultY)
    }
    
    func multiply(_ elements: [Int]) -> Int {
        var result: Int = 0
        for i in elements {
            result = result * i
        }
        return result
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func divide(lhs: Double, rhs: Double) -> Double {
        var result = 0.0
        result = lhs / rhs
        return result
    }
    
    func avg(_ elements: [Int]) -> Double {
        var result: Double = 0.0
        for i in elements {
            result = result + Double(i)
        }
        result = result / Double(elements.count)
        return result
    }
    
    func count(_ elements: [Int]) -> Int {
        var result: Int = 0
        result = elements.count
        return result
    }
    
    func mathOp(args : [Int], beg : Int, op : (Int, Int)) -> Int {
        var result = beg
        for i in args {
            result = op(i, result)
        }
        return result
    }
    
     func mathOp(lhs: Int, rhs: Int, op: (Int,Int)) -> Int {
        return op(lhs, rhs)
    }
    
    
}
