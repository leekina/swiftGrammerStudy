//: [Previous](@previous)

import Foundation

class SomeClass{
    var A = 4
}

let A = 3
let B = 5

let isSame: Bool = A == B
let refA : SomeClass = SomeClass()
let refB : SomeClass = SomeClass()
let refBB : SomeClass = refA

let isRef: Bool = refA === refB
let isReff: Bool = refA === refBB

print(isRef)

//nil 병합 연산자
// A??B A가 nil이 아니면 A를 반환하고, A가 nil이면 B반환
// O! 옵셔널 강제추출
// V? 옵셔널값을 안전하게 추출하거나 ,V가 옵셔널임을 표현

//: [Next](@next)


