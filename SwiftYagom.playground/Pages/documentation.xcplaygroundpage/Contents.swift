import UIKit
import SwiftUI

struct BasicInformation{
    let name: String
    var age: Int
}

var info:BasicInformation = BasicInformation(name: "asdf", age: 133)

class person{
    var height: Float = 0.0
    var weight: Float = 0.0
}

let lee: person = person()
lee.height = 192.5
lee.weight = 74.4

print(info)
dump(info)

print(lee)
dump(lee)

let name : String = "asdf"
print("myname is \(name)")

/*주석
 
 // 이렇게 해도됨
*/

/// 오류타입의 열거형
/// - noName: 이름을 전달받지 못했을때 발생하는 오류
/// - incorrectAge(age:Int):나이가 0세미만 150세 초과인 경우 잘못된 나이로 인식하여 오류로 처리
enum HelloError: Error{
    case noName
    case incorrectAge(age: Int)
    case unknown
}

/**
 여기에 작성되는 텍스트는 description 부분에 표기됩니다.
 
 텍스트 간에 한 줄을 비워놓으면 줄바꿈이 됩니다.
 
 '-','+','*'를 사용하여 원형 글머리 기호를 사용할 수 있습니다.
 
 - 이렇게 말이죠
 + 이렇게도 됩니다
 * 이따구도 되구요
 
 아니면 번호로 글머리 기호를 매겨줄 수도 있습니다.
 1. 1번
 2. 2번
 6. ㅁㄴㅇㄹㅁㅇㄴㄹ
 눈치채셨겠지만 앞에 붙는 번호는 크게 즁요안함 자동으로 번호 매김
 ----
 문단 바꿈
 
 바를 세개이상 사용하면 긴 줄로 문단을 나눔
 
 ----
 
 언더바 또는 별표를 사용하여 텍스트 강조가능
 
 asdfasdf*이텔릭체는 별 하나asdfafds*
 
 asdfasdf**굻게 표시하면 별두개asdfasdf**
 
 관련 링크도 넣어 줄수 있음
 
 [swift Blog](https://swift.org/blog/)
 
 ---
 등호를 사용하면 바로 위 텍스트를 큰재목으로 표시
 
 #큰 제목 표시
 
 바를 사용하면 바로 위 텍스트를 중간 크기 제목으로 표시해줌
 
 사용예
 ----
 
 다른 텍스트보다 네칸이상 들여쓰기하면 코드블록 만들어줌. 강세표를 세개이상 한방향을묶어도됨
 
     //코멘트도 가능
     let myName: String = "yagom"
     try helloSwift(myName, yourAge: 100)
 
 ''''
 let myName: String = "Yagom"
 try helloSwift(myName, yourAge: 100)
 ''''
 
 - note : 강조하고픈 메모를 노트로 남겨줌
 
 - author : 작성자
 
 - warning : 주의할점
 
 ---
 
 >매개변수와 반환값
 
 - parameters:
    - yourName: 당신의 이름
    - yourAge: 당신의 나이.
 - Throws: 오류발생시 throw
 - returns: hellow string
 */

func helloSwift(yourName: String?, yourAge age: Int = 0)throws -> String{
    
    guard let name: String = yourName else{
        throw HelloError.noName
    }
    
    if age > 150{
        throw HelloError.incorrectAge(age: age)
    }
    
    return "Hello Swift!!"
}
