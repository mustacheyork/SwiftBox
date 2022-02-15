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

// 外部引数なし
func outpuMessage(message: String) {
    print(message)
}
outpuMessage(message: "外部引数なしは、呼び出し元で引数名を指定する必要があります。")

func outputMessageOnExternal(displayMessage message: String) {
    print(message)
}
outputMessageOnExternal(displayMessage: "外部引数名を設定すると、呼び出し元と関数内で名前を使い分けることができます。")

func outputMessageNoneExternal(_ message: String) {
    print(message)
}
outputMessageNoneExternal("外部引数を省略すると、呼び出し元で引数名を記述しなくてもOKです。")
print(type(of: outputMessageNoneExternal))

//// 関数の入れ子
//func nestFunction() -> (Int) -> String {
//    func morningMessage(order: Int) -> String {
//        "会員番号\(order)さん、おはよう！"
//    }
//    return morningMessage
//}
//
//let moning = nestFunction()
//print(type(of: moning))
//print(moning(100))  // 会員番号100さん、おはよう！

// 関数の入れ子
func chooseMessage(isMoning: Bool) -> (Int) -> String {
    func morningMessage(order: Int) -> String {
        "会員番号\(order)さん、おはよう！"
    }
    func nightMessage(order: Int) -> String {
        "会員番号\(order)さん、おやすみ！"
    }
    return isMoning ? morningMessage : nightMessage
}

let moning = chooseMessage(isMoning: true)
print(moning(100))

let night = chooseMessage(isMoning: false)
print(night(200))

// 型を確認
print(type(of: chooseMessage)) // (Bool) -> (Int) -> String
print(type(of: moning))        // (Int) -> String
print(type(of: night))         // (Int) -> String

