////: Playground - noun: a place where people can play
//
import UIKit
import XCPlayground
//
//func findMaxAndMinInt(numbers:[Int]) -> (maxInt: Int, minInt: Int)? {
//    guard numbers.isEmpty == false else {
//        return nil
//    }
//    
//    var maxValue = numbers[0]
//    var minValue = numbers[0]
//    for value in numbers {
//        maxValue = maxValue > value ? maxValue: value
//        minValue = minValue < value ? minValue: value
//    }
//    
//    return (maxValue, minValue)
//}
//
//let scores: Array<Int> = [23, 56, 100, 3, 55]
//
//scores.sort { (a, b) -> Bool in
//    return a > b
//}
//// 保证 scores != nil
//findMaxAndMinInt(scores)
//
//// 建议由默认参数值的参数放在最后面
////func sayHelloTo(name: String, withGreeting greeting: String = "Hello") -> String {
////    return "say \(greeting) to \(name)"
////}
////
////sayHelloTo("dd")
////sayHelloTo("jf", withGreeting: "hello")
//
//
//func mutiply(num1: Int, num2: Int) -> Int {
//    return num1 * num2
//}
//
//mutiply(1, num2: 3)
//
//func mutiply(num1: Int, _ num2: Int) -> Int {
//    return num1 * num2
//}
//
//mutiply(1, 3)
//
//func sayHelloTo(names: String ..., withGreeting greeting: String) {
//    for name in names {
//        print("\(name), \(greeting)")
//    }
//}
//
//sayHelloTo("jf", "DC", withGreeting: "Hello")
//
//
//func toBinary(num: Int) -> String {
//    var num = num
//    
//    var res = ""
//    
//    repeat {
//        res = String(num % 2) + res
//        num /= 2
//    } while num != 0
//    
//    return res
//}
//
//toBinary(12)
//
//
//func swapTwoInts(inout a: Int, inout _ b: Int) {
//    let t: Int = a
//    a = b
//    b = t
//}
//
//var x = 1
//var y = 2
//
//swapTwoInts(&x, &y)
//x // 2
//y // 1
//
//let tobinary: (Int)->String = toBinary
//let sayhello: (String ...,String)->() = sayHelloTo
//
//// 函数本身是可以被当做变量的
//var array1 = ["F", "P", "C", "D", "A", "S"]
//func stringSortDesc(a: String, _ b: String) -> Bool {
//    return a > b
//}
//
//let array2 = array1.sort(stringSortDesc)
//array2
//
//// 高阶函数:一个函数的参数是一个函数型变量
//func isAboveLetterF(letter: String) -> String {
//    return letter < "F" ? "ABOVE" :"BELOW"
//}
//
//array1.map(isAboveLetterF)
//array1
//
var score = [99, 20, 60, 80, 30, 21]

score.sort({a, b in
    return a > b
})
score.sort(>)

// map
func isPassOrFail(score: Int) -> String {
    return score < 60 ? "Fail" :"Pass"
}

score.map(isPassOrFail)

// filter
func arrayLower60(score: Int) -> Bool {
    return score < 60
}

score.filter(arrayLower60)

// reduce
func concatenate(str: String, score: Int) -> String {
    return str + "\(score)" + " "
}

score.reduce("", combine: concatenate)

// 从大到小-转成字符串
score.sortInPlace { (score1, score2) -> Bool in
    return score1 > score2
}
score.reduce("", combine: concatenate)

func postage1(weight: Int) -> Int {
    return weight
}

func postage2(weight: Int) -> Int {
    return weight * 2
}

func calculateGoodPrice(weight: Int, price: Int) -> Int {
    func choosePostage(weight: Int) -> (Int) -> Int {
        return weight < 20 ?postage1 :postage2
    }
    
    let postage = choosePostage(weight)
    
    return postage(weight) + weight * price
}

calculateGoodPrice(30, price: 10)

func calculateGoodPrice1(weight: Int, price: Int) -> Int {
    func choosePostage(weight: Int) -> (Int) -> Int {
        return weight < 20 ?postage1 :postage2
    }
    
    let postage = {(weight: Int) -> (Int) -> Int in
        return weight < 20 ?postage1 :postage2
    }
    
    return postage(weight)(weight) + weight * price
}

calculateGoodPrice1(30, price: 10)



