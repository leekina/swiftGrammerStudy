//: [Previous](@previous)
// 클래스를 정의한다는 것은 새로운 타입을 생성해 주는것과 마찬가지 임으로 기본타입처럼 카멜케이스를이용하여 이름을 지어줍니다 프로퍼티와 메소드는 소문자 카멜케이스를 사용하여 이름을 지어줍니다.
// 클래스 인스턴스는 참조타입임

import Foundation
class Person{
    var name : String = "name"
    var age : Int = 0
    
    
    //c++의 ~로 보면 될듯
    deinit{
        print("Person 클래스의 인스턴스가 소멸 됩니다.")
    }
}

var min : Person? = Person()
min = nil


//: [Next](@next)
