//: [Previous](@previous)

import Foundation
//스위프트 함수는 일급객체라서 하나의 데이터 타입으로 사용할 수 있음

//타입 정의해서
typealias CalculateTwoInts = (Int, Int) -> Int

func addTwoadd(_ a:Int, _ b:Int) -> Int{
    return a + b
}

//데이터 타입이 위에 정의한 타입이랑 다름
func addTwomul(_ a:Int, _ b:Float) -> Float{
    return Float(a) * b
}

// 함수가 하나의 데이터 타입으로 사용된거임
var mathFunction : CalculateTwoInts = addTwoadd

print(mathFunction(2,5))
print(addTwoadd(2, 5))

//그래서 이거는 안됨
//mathFunction = addTwomul(2, 5)
print(mathFunction)
//: [Next](@next)
