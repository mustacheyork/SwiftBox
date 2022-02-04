import UIKit

var numberLeft = 100
var numberRight = 100.5

print(type(of: numberLeft))  // Int
print(type(of: numberRight)) // Double

//print(numberLeft + numberRight)

print(Double(numberLeft) + numberRight) // 200.5
print(numberLeft + Int(numberRight))    // 200


let number = 0.1 + 0.2
print(number)
print(type(of: number))

