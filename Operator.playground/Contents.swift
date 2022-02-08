import UIKit
import Darwin

// +：加算演算子
print(20 + 10) // 結果は 30

// -：減算演算子
print(20 - 10) // 結果は 10

// *：乗算演算子
print(20 * 10) // 結果は 200

// /：除算演算子
print(20 / 10) // 結果は 2

// %：剰余演算子
print(10 % 3) // 結果は 1


// 単項マイナス演算子
var point: Int = 300         // 初期値を代入
var minusPoint: Int = -point // 単項マイナス演算子で符号を付与
var plusPoint: Int = -minusPoint // 単項マイナス演算子で符号を付与

print(minusPoint) // 結果は -300
print(plusPoint)  // 結果は 300


// 単項プラス演算子もありますが、実行結果には影響しません
point = -300
print(plusPoint)   // 結果は 300
plusPoint = +point // 単項プラス演算子で符号を付与
print(plusPoint)   // 結果はかわらず -300

// 複合代入演算子
// 加算・減算・乗算・除算・剰余演算子と代入演算子を組み合わせて同等の処理を省略して記述ができます。
var score = 100       // pointに「100」を代入
score += 100      // 複合代入演算子を利用して加算 「point = point + 100」と書くのと同等
print(score)      // 結果は 200
score -= 100      // 複合代入演算子を利用して減算 「point = point * 100」と書くのと同等
print(score)      // 結果は 100
score *= 3        // 複合代入演算子を利用して乗算 「point = point + 100」と書くのと同等
print(score)      // 結果は 300
score /= 4
print(score)      // 結果は 75
score %= 6
print(score)      // 結果は 3

// 比較演算子：==
print(300 == 300) // true
print(300 == 200) // false

print("アップル" == "アップル") // true
print("アップル" == "apple")  // false

print(true == true)         // true
print(true == false)        // false

// 比較演算子：!=
print(300 != 300) // false
print(300 != 200) // true

print("アップル" != "アップル") // false
print("アップル" != "apple")  // true

print(true != true)         // false
print(true != false)        // true

// 比較演算子；>
let firstPoint = 300
let secondPoint = 300

// 三項演算子を用いて、Bool値に応じてPrint出力
firstPoint == secondPoint ? print("同じ値だよ") : print("違う値だよ")

// 三項演算子の結果を定数に保持
let message = firstPoint == secondPoint ? "同じ値だよ" : "違う値だよ"
print(message)

print("----オブジェクト比較----")
// nameプロパティを保持する、Personクラスを定義
class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let tarou = Person(name: "たろう")
// let jirou = Person(name: "じろう")

let copyTarou = tarou
print(type(of: tarou))  // Person型であることを確認
print(type(of: copyTarou))  // Person型であることを確認
// インスタンスのIDの確認（実行する度に、IDは変化します）
print(ObjectIdentifier(tarou)) // 0x00006000004f0e00 を確認
print(ObjectIdentifier(copyTarou)) // 0x00006000004f0e00 を確認

// インスタンス同士の比較
print(tarou === copyTarou) // trueと出力されるので、インスタンス
print(tarou !== copyTarou) // falseと出力されるので、同じインスタンス
