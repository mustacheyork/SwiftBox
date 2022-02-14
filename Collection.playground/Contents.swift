import UIKit
import Foundation

// Int型配列の宣言方法
//let points: Array<Int> = [100 ,20 ,150]
//print(type(of: points)) // Array<Int>
//print(points)           // [100, 20, 150]
//
//// String型配列の宣言方法
//let fruits: Array<String> = ["りんご" ,"みかん" ,"メロン"]
//print(type(of: fruits)) // Array<String>
//print(fruits)           // ["りんご", "みかん", "メロン"]

// シンタックスシュガー（省略記法）
// Int型配列の宣言方法
let points: [Int] = [100 ,20 ,150, 20]
print(type(of: points)) // Array<Int>
print(points)           // [100, 20, 150, 20]

// String型配列の宣言方法
//let fruits: [String] = ["りんご" ,"みかん" ,"メロン", "りんご"]
//print(type(of: fruits)) // Array<String>
//print(fruits)           // ["りんご", "みかん", "メロン", "りんご"]

//// 型推論
//// Int型配列の宣言方法
//let points = [100 ,20 ,150]
//print(type(of: points)) // Array<Int>
//print(points)           // [100, 20, 150]
//
//// String型配列の宣言方法
//let fruits = ["りんご" ,"みかん" ,"メロン"]
//print(type(of: fruits)) // Array<String>
//print(fruits)           // ["りんご", "みかん", "メロン"]

// 空のInt型配列の宣言方法
// 1️⃣Elementを指定して空の配列を宣言
// Int型配列の宣言方法
//let points: Array<Int> = Array<Int>()
//print(type(of: points)) // Array<Int>
//print(points)           // []
//
//// String型配列の宣言方法
//let fruits: Array<String> = Array<String>()
//print(type(of: fruits)) // Array<String>
//print(fruits)           // []

//// 2️⃣シンタックスシュガー（省略記法）
//// Int型配列の宣言方法
//let points: [Int] = []
//print(type(of: points)) // Array<Int>
//print(points)           // []
//
//// String型配列の宣言方法
//let fruits: [String] = []
//print(type(of: fruits)) // Array<String>
//print(fruits)           // []

//// 3️⃣型推論
//let points = [Int]()
//print(type(of: points)) // Array<Int>
//print(points)           // []
//
// String型配列の宣言方法
//let fruits = [String]()
//print(type(of: fruits)) // Array<String>
//print(fruits)           // []
//print(fruits.isEmpty)   // 空の配列なので trueを返却

// デフォルト値で配列を作成する
var fiveDoubles = Array(repeating: 1.0, count: 5)
print(type(of: fiveDoubles)) // Array<Double>
//print(fiveDoubles)           // [1.0, 1.0, 1.0, 1.0, 1.0]

// 2つの配列を一緒に追加して配列を作成する
//let fiveDoubles = Array(repeating: 1.0, count: 5)
//let twoDoubles = Array(repeating: 10.0, count: 3)
//let sevenDoubles = fiveDoubles + twoDoubles
//print(twoDoubles)   // [10.0, 10.0, 10.0]
//print(sevenDoubles) // [1.0, 1.0, 1.0, 1.0, 1.0, 10.0, 10.0, 10.0]

// 複数の型
//let mixTypes: [Any] = [100, "りんご", 0.01, false]
//print(type(of: mixTypes)) // Array<Any>
//print(mixTypes)           // [100, "りんご", 0.01, false]

let scores = [100, 200, 25]
print(scores)

var myset:Set = ["Mike","Mike","Cathy","Malcom"]

print("アップル" == "キウイ" ? "成功" : "失敗")

//let start = Date()
////重い処理を書く
//let elapsed = Date().timeIntervalSince(start)
//print(elapsed)

print("---start---")

// String型配列の宣言方法

//let fruits: Set<String> = Set<String>()
let fruits: Set<String> = []
//let fruits =  Set<String>()

print(type(of: fruits)) // Set<String>
print(fruits)           // []


//// ラベルを省略した場合
//func debugMessageNoLabel(_ message: String) {
//    print("\(message)")
//}
//// ラベルを記述しなくてもパラメータを渡せる
//debugMessageNoLabel("省略している")
//
//// ラベルを省略しない場合
//func debugMessageOnLabel(inputMessage message: String) {
//    print("\(message)")
//}
//debugMessageOnLabel(inputMessage: "省略しない")

// 引数なし、戻り値なし
func testFunction() {
    print("引数なし、戻り値なし")
}
testFunction()

// 引数あり、戻り値なし
func testOnParamFunction(inputData: String) {
    print("引数\(inputData)、戻り値なし")
}
testFunction()
testOnParamFunction(inputData: "あり")

// 引数あり、戻り値なし
func testOnRetunFunction() -> String {
    "引数なし、戻り値あり"
}
var message = testOnRetunFunction()
print(message)

// 引数あり、戻り値あり
func testOnBothFunction(inputData: String) -> String {
    "引数\(inputData)、戻り値あり"
}
message = testOnBothFunction(inputData: "あり")
print(message)
