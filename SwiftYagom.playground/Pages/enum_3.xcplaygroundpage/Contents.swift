//: [Previous](@previous)
// 순환 열거형

import Foundation

//순환 열거형을 먼저 명시하고
indirect enum Ari{
    case num(Int)
    case addition(Ari, Ari)
    case mul(Ari, Ari)
}

// 계산을 위한 값을 만들어주고
let five = Ari.num(5)
let four = Ari.num(4)
let sum = Ari.addition(five, four)
let final = Ari.mul(sum, Ari.num(2))

// 순환열거형에서 선언해준 함수들을 정의함
func evaluate(_ expression: Ari) -> Int{
    switch expression{
    case .num(let value):
        return value
    case .addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .mul(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}

//그리고 계산
//이 문장 주석처리하면 위에 둘은 둘다 정의기 때문에 작동안함
let result : Int = evaluate(final)

//: [Next](@next)
