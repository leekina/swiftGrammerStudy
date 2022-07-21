//: [Previous](@previous)
// 옵셔널 바인딩은 옵셔널에 값이 없는경우를 대비하기 위해서 한다.
// 옵셔널 변수를 if나 switch문을 이용하여 값이 있는경우에는 일반적으로 출력하거나
//값이 없는 경우(nil)에는 else혹은 넘기는것으로 처리를 해준다.
//중요한점은 if 문 안에서 선언된 변수나 상수를 이용해서 작업하기 때문에
// 같은 변수명을 외부에서 게속 사용할수 있다는 이점이 있다.
// 강제추출이나 암시적 추출 옵셔널을 사용하는것 보다는 옵셔널 바인딩 혹은 옵셔널 체이닝을 쓰는게 스위프트의 지향점에 부합함
import Foundation

var myName : String? = "MinHyeng"

//옵셔널 바인딩을 통한 임시 상수 할당
if let name = myName{
    print("My name is \(name)")
}else{
    print("myname == nil")
}

if var name = myName{
    name = "wizplan"
    print("name is \(name)")
}else{
    print("myname == nil")
}
//: [Next](@next)
