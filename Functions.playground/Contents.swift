import UIKit

func buyJuice(juiceName: String, coins: [Int]) -> String {
    var message: String = ""
    var money: Int = 0
    var change: Int = 0
    let juicePrice: Int = 120
    
    for coin in coins {
       money += coin
    }
    
    change = money - juicePrice

    if change >= 0 {
        message = "\(juiceName)をどうぞ！おつりは\(change)円です。"
    } else {
        message = "\(juiceName)が買えません！あと\(-change)円必要です。"
    }
    
    return message
}
print(buyJuice(juiceName: "コーラ", coins:  [100, 20]))
