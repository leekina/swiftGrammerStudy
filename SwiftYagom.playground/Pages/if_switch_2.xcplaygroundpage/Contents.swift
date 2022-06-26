//: [Previous](@previous)
// 열거형 사용해서도 스위치문 사용할 수 있음
// default 사용해서 나머지 처리 안해주면
// 열거형 안에 있는 모든거 다 선언 해줘야함

import Foundation

enum School{
    case primary, elementary, middle, high, college, university, graduate
}

enum menu{
    case chi
    case piz
}

let lastgrade : School = School.university

switch lastgrade {
case .primary:
    print("asdf")
case .elementary:
    print("asdf2")
case .middle:
    print("asdf2")
case .university:
    print("asdf2")
default:
    print("asdfadsf")
}

let ln : menu = menu.chi

switch ln{
case chi:
    print("asdfasdf")
case piz:
    print("Asdfaf")
case _: //case default: 와 같은표현임
    print("asdfadsfadf")
}





//: [Next](@next)
