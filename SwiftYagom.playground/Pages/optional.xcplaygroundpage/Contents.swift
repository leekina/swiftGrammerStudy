//: [Previous](@previous)

import Foundation

func check(value optionalValue: Any?){
    switch optionalValue{
    case .none:
        print("no!")
    case .some(let value):
        print("Yes \(value)")
    }
}


var myName : String? = "ya"
print(myName)
check(value: myName)
myName = nil
print(myName)
check(value: myName)



//: [Next](@next)
