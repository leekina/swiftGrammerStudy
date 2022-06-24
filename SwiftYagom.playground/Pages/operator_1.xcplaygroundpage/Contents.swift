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

//: [Next](@next)


