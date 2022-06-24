//: [Previous](@previous)
// 연산자 생성과 구현
import Foundation
prefix operator **

prefix func ** (value: Int) -> Int{
    return value * value
}

prefix func ** (value: String) -> String{
    return value + " " + value
}

let n : Int = -5
let sqrn : Int = **n

let s : String = "yagom"
let sqrs : String = **s


//: [Next](@next)
