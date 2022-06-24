//: [Previous](@previous)

import Foundation

let n : Int = 5

switch n{
case 0:
    print(n)
case 1...10:
    print(n)
    fallthrough //다음케이스도 실행
case Int.min..<0, 101..<Int.max:
    print(n)
    break
default:
    print("asdf")
}

//케이스로 문자, 문자열, 열거형, 튜플, 범위 ,패턴이 적용된 타입등 다양한 타입도 사용가능

//: [Next](@next)
