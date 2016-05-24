//: Playground - noun: a place where people can play

import UIKit

/*
 字符串
 */
// 1.字符串的长度
var hello = "---hell0--?"
hello.characters.count

//hello[hello.endIndex.advancedBy(2)]

let hh = hello.startIndex.advancedBy(2)
hello.startIndex..<hh

let range = hello.startIndex..<hh

let s1: String = NSString(format: "one of thrid is %.2f", 1.0/3.0) as String

let s2: NSString = s1 as NSString


hello.stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString: "?-"))
hello.containsString("")

var str: String? = "hh"
var str1: String?


str1 = str?.uppercaseString

//var age: Int? = 17
//print(age!)
//
//if let age = age {
//    print(age)
//}

var age: Int! = nil
age = 17
print(age)

var array1 = [0, 1, 2, 3, 4]
var array11: [Int] = [0, 1, 2, 3, 4]
var array12: Array<Int> = [0, 1, 2, 3, 4] // 使用范式

var array2 = ["A", "B", "C", "D", "E"]
var array21: [String] = ["A", "B", "C", "D", "E"]
var array22: Array<String> = ["A", "B", "C", "D", "E"]

// 初始化空的数组
var emptyArray1: [Int] = []
var emptyArray2: Array<Int> = []
var emptyArray3 = [Int]()
var emptyArray4 = Array<Int>()

// 可以初始化时,统一赋初值
var array3 = Array<Int>(count: 3, repeatedValue: -1)


var numberArray: Array<String> = ["A", "B", "C", "D", "E"]
numberArray.count // 5
numberArray.isEmpty // false
numberArray[1] // "B" (注意:数组越界问题)
numberArray.indexOf("C") // 2
numberArray.contains("B") // true

numberArray.first // 数组中第一个元素(可选型,使用是需要解包)
numberArray.last  // 数组中最后一个元素

numberArray.minElement() // 数组中的最小值(可选型,使用是需要解包)
numberArray.maxElement() // 数组中的最大值

numberArray[2..<4] // ["C", "D"] (获取子数组)
numberArray[2..<numberArray.count] // ["C", "D", "E"]

/**
 *  建议使用以下方式遍历数组
 *  index:下标
 *  number:下标对应的值
 */
for (index, number) in numberArray.enumerate() {
    print("\(index): \(number)")
}

/**
 *  对数组进行-增、删、改、查
 */
var courses = ["高数(一)", "高数(二)", "英语", "数据结构"]

// 增
courses.append("体育")
courses = courses + ["音乐", "语文"]
courses.insert("物理", atIndex: 2)

// 改
courses[0] = "高等数学(一)"
courses[0..<2] = ["高等数学(一)", "高等数学(二)"]
courses[0..<2] = ["化学"]
courses[0..<3] = ["政治", "地理"]


// 删
courses.removeFirst()
courses.removeLast()
courses.removeAtIndex(1)
courses.removeAll()

var dic: Dictionary<String, String> = ["Swift": "雨燕",
                                       "Java": "爪哇",
                                       "Python": "大蟒"]
// 空的字典
var emptyDic1: Dictionary<String, String> = [:]
var emptyDic2: [String: String] = [:]
var emptyDic3 = Dictionary<String, String>()
var emptyDic4 = [String: String]()

dic["Swift"]

dic.count // 3
dic.isEmpty
Array(dic.keys)
Array(dic.values)

for key in dic.keys {
    print(key)
}

for value in dic.values {
    print(value)
}

// 遍历键值
for (key, value) in dic {
    print("\(key): \(value)")
}

let dic1 = ["1": "A",
            "2": "B",
            "3":"C"]
let dic2 = ["1": "A",
            "3": "C",
            "2":"B"]
dic1 == dic2  // true

var personDic = ["name": "jf",
                 "age": "22",
                 "height": "178"]
personDic["age"] = "23"
var oldName = personDic.updateValue("dongdong", forKey: "name")

// 增
personDic["email"] = "weboon@gg.com"

// 删
personDic["email"] = nil
var oldage = personDic.removeValueForKey("age")

personDic.removeAll()


// 集合
var skills: Set<String> = ["Swift", "OC"]

// 空集合
var emptySet: Set<String> = []
var emptySet1 = Set<String>()

skills.count

skills.isEmpty

let v = skills.first // 随机一个，集合是无序的

skills.contains("OC")

for skill in skills {
    print(skill)
}

let setA: Set<Int> = [1, 2, 3]
let setB: Set<Int> = [1, 2, 3, 1, 2, 3, 4]

setA == setB // true

// 操作
skills.insert("HTML")
skills.remove("HTML")
skills.removeAll()

var skillA: Set<String> = ["Swift", "JavaScript"]
var skillB: Set<String> = ["Swift", "Pthyon"]

// 并集
skillA.union(skillB)        // 不改变了skillA的值
skillA.unionInPlace(skillB) // 改变了skillA的值

// 交集
skillA.intersect(skillB)
skillA.intersectInPlace(skillB)

// 减法:skillA 减去与skillB公用的
skillA.subtract(skillB)
skillA.subtractInPlace(skillB)

// 亦或：取出skillA、skillB之间只出现过一次的元素集合
skillA.exclusiveOr(skillB)
skillA.exclusiveOrInPlace(skillB)

skillA.union(["andriod"])

// 判断skillC是否为skillA的子集
var skillC: Set<String> = ["Swift"]
skillC.isSubsetOf(skillA) // true 子集
skillC.isStrictSubsetOf(skillA) // true 真子集

// 超集
skillA.isSupersetOf(skillC) // true 超集
skillA.isStrictSupersetOf(skillC) // true 真超集

// 相离：没有重复的元素
skillA.isDisjointWith(skillB) // false

