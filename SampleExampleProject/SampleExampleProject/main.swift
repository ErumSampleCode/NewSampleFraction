//
//  main.swift
//  SampleExampleProject
//
//  Created by Erum Naz on 27/06/23.
//

import Foundation

 func performOperation(operation: Character, operand1: Fraction, operand2: Fraction) -> Fraction? {
    switch operation {
    case "+":
        return operand1 + operand2
    case "-":
        return operand1 - operand2
    case "*":
        return operand1 * operand2
    case "/":
        return operand1 / operand2
    default:
        print("Invalid operation")
        return nil
    }
}

func parseFraction(_ fractionStr: String) -> Fraction? {
    if fractionStr.contains("&") {
        // Mixed number format without spaces
        let components = fractionStr.components(separatedBy: "&")
        guard components.count == 2,
            let wholePart = Int(components[0]),
            let fractionPart = parseFraction(components[1]) else {
                print("Invalid fraction format")
                return nil
        }
        return Fraction(whole: wholePart, fraction: fractionPart)
    } else if fractionStr.contains("/") {
        // Fraction format
        let components = fractionStr.components(separatedBy: "/")
        guard components.count == 2,
            let numerator = Int(components[0]),
            let denominator = Int(components[1]) else {
                print("Invalid fraction format")
                return nil
        }
        return Fraction(numerator: numerator, denominator: denominator)
    } else if let number = Int(fractionStr) {
        // Whole number format
        return Fraction(whole: number)
    }
    
    print("Invalid fraction format")
    return nil
}

func promptForInput() -> String? {
    print("Enter the operation (e.g., 1/2* 3&3/4):")
    return readLine()
}

func main() {
    while let input = promptForInput(), input.lowercased() != "exit" {
        let components = input.components(separatedBy: .whitespaces)
        guard components.count == 3 else {
            print("Invalid input format")
            continue
        }
        let operand1 = parseFraction(components[0])
        let operation = Character(components[1])
        let operand2 = parseFraction(components[2])
        
        guard let fraction1 = operand1, let fraction2 = operand2 else {
            print("Invalid operands")
            continue
        }
        if let result = performOperation(operation: operation, operand1: fraction1, operand2: fraction2) {
            print("=\(result)")
        }
    }
 }
main()
