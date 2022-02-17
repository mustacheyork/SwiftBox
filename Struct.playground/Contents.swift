import UIKit

// ユーザー構造体
struct User {
    let id: Int
    let name: String
    let city: String
}
let tarou = User(id: 100, name: "たろう", city: "東京都")

// 上記のユーザー構造体と同意義のタプル型
let jirou = (id: 101, name: "じろう", city: "神奈川県")

// struct（構造体）を受け取る関数
func showStructUser(user: User) {
    print("会員番号\(user.id)：\(user.name)さんは、\(user.city)在住")
}
showStructUser(user: tarou) // 会員番号100：たろうさんは、東京都在住

// tuple（タプル型）を受け取る関数
func showTupleUser(user: (id: Int, name: String, city: String)) {
    print("会員番号\(user.id)：\(user.name)さんは、\(user.city)在住")
}
showTupleUser(user: jirou) // 会員番号101：じろうさんは、神奈川県在住

struct User1 {
    var name: String  // 格納型プロパティ（stored property）
    let rank: String  // 格納型プロパティ（stored property）
    let point: Int    // 格納型プロパティ（stored property）

    var bonus: Int {  // 計算型プロパティ（computed property）
        if rank == "Gold" {
            return point * 3
        } else {
            return point * 2
        }
    }

    func showScore() { // メソッド
        print("\(name)さんのポイントは、\(point)点！")
    }

    func showBonus() { // メソッド
        print("\(name)さんのボーナスは、\(bonus)点！")
    }
}

let sakura = User1(name: "さくら", rank: "Standard", point: 30) // インスタンスを生成
print(sakura.name)  // さくら
print(sakura.rank)  // Standard
print(sakura.point) // 30
print(sakura.bonus) // 60
sakura.showScore() // さくらさんのポイントは、200点！
sakura.showBonus() // さくらさんのボーナスは、400点！

print(type(of: sakura)) // User

let jone = User1(name: "ジョン", rank: "Gold", point: 150)       // インスタンスを生成
jone.showScore()   // ジョンさんのポイントは、150点！
jone.showBonus()   // ジョンさんのボーナスは、450点！
print(type(of: jone)) // User

struct User2 {
    let name: String
    var point: Int

    // init 以外のキーワードを利用することはできない
    init() {
        name = "名無し" // init キーワードのコードブロック {} には初期化のための手続きを記述
        point = 1000   // init キーワードのコードブロック {} 内では、構造体のプロパティに自由にアクセス可能
    }

    init(inputName: String) { // 複数個のイニシャライザを定義することが可能
        name = inputName
        point = 2000
    }
}
let defaultUser = User2() // 引数を持たないイニシャライザーを利用してインスタンス生成
print(defaultUser) // User(name: "名無し", point: 1000)

let sakura2 = User2(inputName: "さくら") // inputNameを引数として持つイニシャライザーを利用してインスタンス生成
print(sakura2)      // User(name: "さくら", point: 2000)
