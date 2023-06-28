//
//  SampleExample.swift
//  SampleExample
//
//  Created by Erum Naz on 27/06/23.
//

import XCTest


final class SampleExample: XCTestCase {
    
    

    func testAddition() {
        XCTAssertEqual(calculate("1/2 + 3/4"), "1&1/4")
        XCTAssertEqual(calculate("2/3 + 1/3"), "1")
        XCTAssertEqual(calculate("1/4 + 1/2"), "3/4")
        XCTAssertEqual(calculate("-1/2 + 1/2"), "0")
    }
    
    func testSubtraction() {
        XCTAssertEqual(calculate("3/4 - 1/2"), "1/4")
        XCTAssertEqual(calculate("5/6 - 1/6"), "2/3")
        XCTAssertEqual(calculate("1/2 - 1/4"), "1/4")
        XCTAssertEqual(calculate("1/2 - 3/2"), "-1")
    }
    
    func testMultiplication() {
        XCTAssertEqual(calculate("1/2 * 3/4"), "3/8")
        XCTAssertEqual(calculate("2 * 3/4"), "1&1/2")
        XCTAssertEqual(calculate("-1/2 * 2/3"), "-1/3")
        XCTAssertEqual(calculate("3/4 * -2"), "-1&1/2")
    }
    
    func testDivision() {
        XCTAssertEqual(calculate("1/2 / 3/4"), "2/3")
        XCTAssertEqual(calculate("5/6 / 1/3"), "5/2")
        XCTAssertEqual(calculate("1/2 / 1/4"), "2")
        XCTAssertEqual(calculate("1/2 / -3/2"), "-1/3")
    }
    
    func testMixedNumbers() {
        XCTAssertEqual(calculate("1&1/2 + 2&3/4"), "4&1/4")
        XCTAssertEqual(calculate("2&3/8 * 3/4"), "2&1/8")
        XCTAssertEqual(calculate("1&3/4 - 2"), "-1/4")
        XCTAssertEqual(calculate("2 - 1&3/4"), "1/4")
    }
    
    func testInvalidInput() {
        XCTAssertEqual(calculate("1/2 * 3/4 *"), "Invalid input format")
        XCTAssertEqual(calculate("2&3/8 +"), "Invalid input format")
        XCTAssertEqual(calculate("1/2 3/4"), "Invalid input format")
        XCTAssertEqual(calculate("1/2 + 3/4 - 1/4"), "Invalid input format")
        XCTAssertEqual(calculate("exit"), "Program exited")
    }
    
   /* private func calculate(_ input: String) -> String {
        let components = input.components(separatedBy: .whitespaces)
        
        guard components.count == 3 else {
            return "Invalid input format"
        }
        
        let operand1 = parseFraction(components[0])
        let operation = Character(components[1])
        let operand2 = parseFraction(components[2])
        
        guard let fraction1 = operand1, let fraction2 = operand2 else {
            return "Invalid operands"
        }
    
        if let result = performOperation(operation: operation, operand1: fraction1, operand2: fraction2) {
            return result.description
        } else {
            return "Invalid operation"
        }
    }
    
    private func parseFraction(_ fractionStr: String) -> Fraction? {
        if fractionStr.contains("&") {
            // Mixed number format
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
    }*/
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
