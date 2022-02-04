import UIKit

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var taro = Person(name: "たろう")
var jirou = Person(name: "じろう")
// var jirou = taro

print(type(of: taro))

// クラスインスタンスの識別子を取得
// 構造体、列挙型、関数、またはタプルにはIDの概念はない
print(ObjectIdentifier(taro))
print(ObjectIdentifier(jirou))

// ハッシュ値を取得
print(ObjectIdentifier(taro).hashValue)
print(ObjectIdentifier(jirou).hashValue)
