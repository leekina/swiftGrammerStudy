//: [Previous](@previous)
// 구조체를 정의한다는것은 새로운 타입을 생성해 주는것과 마찬가지 임으로 기본타입 이름처럼  대문자 카멜케이스를 사용하여 이름을 지어 줍니다. 프로퍼티와 메소드는 소문자 카멜케이스를 사용하여 이름을 지어 줍니다.
import Foundation

struct BasicInformation{
    var name : String
    var age : Int
}

var person1 : BasicInformation = BasicInformation(name: "lee", age: 99)
person1.name = "yam"
print(person1.name)
//: [Next](@next)
