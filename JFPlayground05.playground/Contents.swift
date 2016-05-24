////: Playground - noun: a place where people can play
//
import UIKit

typealias SayHello = (name: String, greeting: String) -> Void

let sayHello: SayHello? = {name, greeting in
    print("\(name): \(greeting)")
}

sayHello!(name: "jj", greeting: "Hi")


let hello = {(name: String, greeting: String) -> String in
    // 函数体
    return "\(name): \(greeting)"
}
