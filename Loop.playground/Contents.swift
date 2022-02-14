import UIKit

// 約数の表示
let baseNumber = 70
for number in 1...baseNumber {
    if baseNumber % number ==  0 {
        print(number)
    }
}

// 1〜100までの素数を表示
var primeNubmers: [Int] = []
let upperLimit: Int = 100

for baseNumber in 1...upperLimit {
    var count = 0
    for number in 1...baseNumber {
        if baseNumber % number ==  0 {
            count = count + 1
        }
    }
    if count == 2 {
        primeNubmers.append(baseNumber)

    }
}
print("\(primeNubmers)は、素数です。")
