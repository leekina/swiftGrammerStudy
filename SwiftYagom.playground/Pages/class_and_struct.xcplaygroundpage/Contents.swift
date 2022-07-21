//: [Previous](@previous)
// 구조체는 값 타입이고 클래스는 참조 타입임.
// 하지만 참조타입이라고해서 c++ 처럼 *(포인터)로 표현하지는 않음
// 잠조가 같은지에 대한 식별은 ===를 사용 bool값

//대부분의 경우에는 class를 사용함
// 하지만
// 1. 값을 참조하는것보다 복사하는것이 합당할때
// 2. 상속이 필요하지 않을때
// 는 구조체를 사용하는것이 좋음
// 스위프트 표준라이브러리에 포함되어있는 스위프트의 기본타입들은 대부분 struct로 표현되어 있음
// 기존 설정에 변함없게 하기 위함임

import Foundation
struct BasicInformation{
    let name: String
    var age: Int
}
var yagomInfo: BasicInformation = BasicInformation(name: "yagom", age: 99)
yagomInfo.age = 100
var friendInfo: BasicInformation = yagomInfo

print("yagom's age: \(yagomInfo.age)")
print("friend's age: \(friendInfo.age)")

friendInfo.age = 999

print("yagom's age: \(yagomInfo.age)")
print ("friend's age: \(friendInfo.age)")

class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
}
var yagom: Person = Person()
var friend: Person = yagom

print("yagom's height: \(yagom.height)")
print("friend's height: \(friend.height)")

friend.height = 185.5
print("yagom's height: \(yagom.height)")
print ("friend's height: \(friend.height)")

func changeBasicInfo( info: BasicInformation) {
    var copiedInfo: BasicInformation = info
    copiedInfo.age = 1
}
func changePersonInfo(_ info: Person){
    info.height = 155.3
}

changeBasicInfo(info: yagomInfo)
print("yagom's age: \(yagomInfo.age)")
// 구조체는 값이기 때문에 매개변수로 넘겨주더라도 값을 복사해서 전달하기 때문에
// 변경하더라도 원본수정은 안됨

changePersonInfo(yagom)
print("yagom's height : \(yagom.height)")
//하지만 클래스의 경우 참조기 때문에 함수에서 수정하게 되면 원본값이 수정됨
    //: [Next](@next)
