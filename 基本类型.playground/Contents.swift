//: Playground - noun: a place where people can play

import UIKit

/*
 基本数据
 */
var valueFloat: Float = 4.0

Int.max
Int.min


let largeInt = 100_0000
let largeFloat = 8_0000.000_000_1

let xx = 3.6
let yy: Int = Int(xx)


let label = "The width is"
let width = 94
let widthLabel = label +  " \(width)"

let week: Float = 5
let person = "dongdong"
let greet = "Today is \(week), I say Holle To \(person)"


// 数组
var shoppingList = ["catfish", "water", "blue paint"]
if let shoppingListIndex = shoppingList.indexOf("water") {
    shoppingList[1] = "water1"
    shoppingList
}

// 字典
var donggua = [
    "name": "dongdong",
    "age": "22",
    "height": "178"
]

donggua["weight"] = "60"
donggua

// 空数组
//var emptyArray = String[]()
//let emptyDictionary = Dictionary<String, Float>()

// 元组
var point0: (Int , Int) = (2, 5)
let (x0, y0) = point0

var point1: (x1: Int, y1: Int) = (2, 5)
point1.x1
point1.y1

var point2 = (x2: 2, y2: 5)
point2.x2
point2.y2

// 忽略元组中某些值
var (loginStatus, _) = (true, "LoginSuccess")
if loginStatus {
    print("Login Success")
}
else {
    print("Login Fail")
}

// print
var x = 1, y = 2, z = 3
print(x, y, z)
print(x, y, z, separator:": ")
print(x, y, z, terminator:" ::)")
print("")

/*
 算数运算符
*/
// 1.取余:不仅适用于整型，也适用于小数
let u = 2.5
let v = 1.2
let random = u%v


var battery = 19
var batteryColor: UIColor

if battery <= 20 {
    batteryColor = UIColor.redColor()
}
else {
    batteryColor = UIColor.greenColor()
}

batteryColor

var batteryColor2 = (battery <= 20) ?UIColor.redColor() :UIColor.greenColor()


for index in 1...10 {
    index
}

let courseArray = ["math", "yuwen", "wuli"]

for index1 in 0..<courseArray.count {
    index1
}

pow(2.0, 2)

var innn = 0
while innn < 5 {
    innn
    innn += 2
}

var inn = 0
repeat {
    inn += 1
}while inn < 5

while true {
    var a = arc4random_uniform(6) + 1
    var b = arc4random_uniform(6) + 1
    
    if a == b {
        print("a is \(a),b is \(b), draw")
        continue
    }
    
    let winner = a > b ?"A" :"B"
    print("a is \(a),b is \(b), \(winner) win")
    break
    
}

var rating = "a"
switch rating {
    case "a", "A":
    print("greet")
    default:
    ()
}

let point4 = (2, 1)
switch point4 {
    case (_, 1):
        print("true")
    fallthrough
    case (1, _):
        print("true")
    default:
        () // 小括号,表示空语句
}

forward1:
for index5 in 0..<100 {
    for index6 in 50..<100 {
        if index5 * 3 == index6 {
            print("\(index5) * 3 = \(index6)")
            break forward1
        }
    }
}


var hello = "Hello world"
for c in hello.characters {
    print(c)
}

let mark: Character = "2"
hello + String(mark)
hello.append(mark)
hello.stringByAppendingString("!")
hello

hello.characters.count

var i = 10
if case let p = i  where p % 2 == 0 {
    
}


