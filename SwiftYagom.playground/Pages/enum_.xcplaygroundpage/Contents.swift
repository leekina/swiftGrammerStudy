//: [Previous](@previous)

import Foundation
enum School : String,CaseIterable {
    case primary = "유딩"
    case choding = "초딩"
    case jung = "중딩"
    case high
    @available(iOS, obsoleted : 12.0)
    case grad = "대학원"
    
    //available 속성을 통해 특정 케이스를 플랫폼에 따라 사용할수 있거나 없는 경우가 생기면
    //CaseIterable프로토콜을 채택하는것만으로
    //allCases프로퍼티를 사용할 수 없음
    //그 때는 직접 allCases 프로퍼티를 구현해 줘야함
    static var allCases : [School]{
        let all: [School] = [.primary,
                             .choding,
                             .jung,
                             .high]
        //여기서 선언안해준건 allCase 안댐
        
        #if os(iOS)
        return all
        #else
        return all + [.grad]
        #endif
    }
}

enum num : Int{
    case ione
    case twoo
}




var schoolLevel : School = School.primary
print(schoolLevel.rawValue)
print(School.primary.rawValue)
print(School.high.rawValue)
print(num.ione.rawValue)
print(num.twoo.rawValue)
let allCases : [School] = School.allCases
//열거영 항목순회 : CaseIterable로 선언된거만 가능하며 값만 반환됨
print(allCases)



//: [Next](@next)
