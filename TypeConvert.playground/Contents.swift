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


print("------------")
let maxNumber = 100
var count = 0
var primeNumbers: [Int] = []

//  2、3、5、7、11、13、17、19、23、29、31、37、41、43、47、53、59、61、67、71、73、79、83、89、97

//// 約数の表示
let baseNumber = 70
for number in 1...baseNumber {
    if baseNumber % number ==  0 {
        print(number)
    }
}

// 1〜100までの素数を表示
var primeNubmer: [Int] = []
for baseNumber in 1...100 {
    var count = 0
    for number in 1...baseNumber {
        if baseNumber % number ==  0 {
            count = count + 1
        }
    }
    if count == 2 {
        primeNubmer.append(baseNumber)
    }
}
print("100までの素数の数は、\(primeNubmer.count)です。")
print("\(primeNubmer)は、素数です。")

let a = (2 ..< 100).filter{$0 % 2 != 0 || $0 == 2}.filter{$0 % 3 != 0 || $0 == 3}.filter{$0 % 5 != 0 || $0 == 5}.filter{$0 % 7 != 0 || $0 == 7}
 print("答えは\(a)")
