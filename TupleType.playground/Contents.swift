import UIKit

let mixDataType = (100, "", true, 2.55)
print(mixDataType)           // (1, "こんにちは", true, 2.55)
print(mixDataType.0)         // 1
print(mixDataType.1)         // こんにちは
print(mixDataType.2)         // true
print(mixDataType.3)         // 2.55
// print(mixDataType.4)      // エラー
print(type(of: mixDataType)) // (Int, String, Bool, Double)

let mixDataTypeOnLabel = (id: 10, message: "こんにちは", status: true, point: 2.55)
print(mixDataTypeOnLabel)           // (id: 10, message: "こんにちは", status: true, point: 2.55)
print(mixDataTypeOnLabel.id)        // 10
print(mixDataTypeOnLabel.message)   // こんにちは
print(mixDataTypeOnLabel.status)    // true
print(mixDataTypeOnLabel.point)     // 2.55

let (id, message, status, point) =  (1, "こんにちは", true, 2.55)
print(type(of: id))
print(id)      // 1
print(message) // こんにちは
print(status)  // true
print(point)   // 2.55

func split(name: String) -> (lastName: String, firstName: String) {
    // componentsは、受け取った文字列を、指定された区切り文字で区切った配列を返却。
    let split = name.components(separatedBy: " ")  // 半角スペースで文字を区切り配列に格納
    print(type(of: split)) // Array<String>
    return (split[0], split[1]) // 区切られた文字をタプルで返却
}

let parts = split(name: "やまだ さくら")
print(parts.0)         // やまだ
print(parts.1)         // さくら
print(parts.lastName)  // やまだ
print(parts.firstName) // さくら

let mixDataTypeOnLabel = (id: 120, status: true, score: 135.50,  message: "ごきげんよう")
print(type(of: mixDataTypeOnLabel)) // (id: Int, message: String, status: Bool, point: Double)
