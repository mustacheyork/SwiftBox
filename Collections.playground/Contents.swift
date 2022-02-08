import UIKit

// Int型配列の宣言方法
//let points: Array<Int> = [100 ,20 ,150]
//print(type(of: points)) // Array<Int>
//print(points)           // [100, 20, 150]
//
//// String型配列の宣言方法
//let fruits: Array<String> = ["りんご" ,"みかん" ,"メロン"]
//print(type(of: fruits)) // Array<String>
//print(fruits)           // ["りんご", "みかん", "メロン"]

//// シンタックスシュガー（省略記法）
//// Int型配列の宣言方法
//let points: [Int] = [100 ,20 ,150]
//print(type(of: points)) // Array<Int>
//print(points)           // [100, 20, 150]
//
//// String型配列の宣言方法
//let fruits: [String] = ["りんご" ,"みかん" ,"メロン"]
//print(type(of: fruits)) // Array<String>
//print(fruits)           // ["りんご", "みかん", "メロン"]

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
//// String型配列の宣言方法
//let fruits = [String]()
//print(type(of: fruits)) // Array<String>
//print(fruits)           // []



// デフォルト値で配列を作成する
var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles)

// 2つの配列を一緒に追加して配列を作成する
var anotherThreeDoubles=Array(repeating: 2.5, count: 3)
print(anotherThreeDoubles)

// 複数の型
let a: [Any] = [100, "Hello", 0.5]
