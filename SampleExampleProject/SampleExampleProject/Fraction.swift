//
//  Fraction.swift
//  SampleExampleProject
//
//  Created by Erum Naz on 27/06/23.
//

import Foundation

struct Fraction {
    var numerator: Int
    var denominator: Int
    
    init(numerator: Int, denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
        simplify()
    }
    init(whole: Int, fraction: Fraction){
        let numerator = whole*fraction.denominator+fraction.numerator
        let denominator = fraction.denominator
        self.init(numerator: numerator, denominator: denominator)
    }
    
    init(whole: Int) {
        self.init(numerator: whole, denominator: 1)
    }
    
    private func gcd(_ a:Int, _ b:Int) -> Int{
        let remainder = a%b
        if remainder != 0 {
            return gcd(b, remainder)
        } else {
            return abs(b)
        }
    }
    
    private mutating func simplify() {
        let greatestCommonDivisor = gcd(numerator, denominator)
        numerator /= greatestCommonDivisor
        denominator /= greatestCommonDivisor
        
        if denominator < 0{
            numerator *= -1
            denominator *= -1
        }
    }
    
    static func +(lhs: Fraction, rhs: Fraction) -> Fraction {
        let numerator = lhs.numerator * rhs.denominator + lhs.denominator * rhs.numerator
        let denominator = lhs.denominator * rhs.denominator
        return Fraction(numerator: numerator, denominator: denominator)
    }
    
    static func -(lhs: Fraction, rhs: Fraction) -> Fraction {
        let numerator = lhs.numerator * rhs.denominator - lhs.denominator * rhs.numerator
        let denominator = lhs.denominator * rhs.denominator
        return Fraction(numerator: numerator, denominator: denominator)
    }
    
    static func *(lhs: Fraction, rhs: Fraction) -> Fraction {
        let numerator = lhs.numerator * rhs.denominator
        let denominator = lhs.denominator * rhs.denominator
        return Fraction(numerator: numerator, denominator: denominator)
    }
    
    static func /(lhs: Fraction, rhs: Fraction) -> Fraction {
        let numerator = lhs.numerator * rhs.denominator
        let denominator = lhs.denominator * rhs.numerator
        return Fraction(numerator: numerator, denominator: denominator)
    }
    
    var description: String {
        if numerator == 0 {
            return "0"
        } else if numerator == denominator {
            return "1"
        } else if denominator == 1 {
            return "\(numerator)"
        } else {
            return "\(numerator)/\(denominator)"
        }
        
    }
}
