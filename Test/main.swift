//
//  main.swift
//  Test
//
//  Created by Danil Kim on 13.02.2024.
//

import Foundation

enum Figures {
    case triangle
    case circle
}

func solveSquare(figure: Figures, r: Double = 0, a: Double = 0, b: Double = 0, c: Double = 0) -> Double {
    switch figure {
    case .triangle:
        var p = (a+b+c)/2
        return (sqrt(p * (p-a) * (p-b) * (p-c)))
    case .circle:
        return (3.14 * r * r)
    default:
        return 0
    }
}

func isRigthtriangle(a: Double, b: Double, c: Double) -> Bool {
    if a*a == b*b + c*c || b*b == a*a + c*c || c*c == b*b + a*a {
        return true
    }
    else {
        return false
    }
}

var squareOfFigure = solveSquare(figure: .triangle, a: 3, b: 4, c: 5)
print(squareOfFigure)
squareOfFigure = solveSquare(figure: .circle, r: 5)
print(squareOfFigure)

print(isRigthtriangle(a: 3, b: 4, c: 5))
print(isRigthtriangle(a: 3, b: 4, c: 6))
