//: [Previous](@previous)
// 반환있는 함수를 설정하는 다양한 방법
import Foundation
// 전달인자 레이블 설정한거 name
// _ 는 전달인자 레이블 없이 그냥 받아오는거
func sayHello(name n : String, _ r : Int)-> String{
    var result : String = ""
    
    
    // 반복구문 이렇게 쓰고 _ : 와일드카드라고 부르는데 아무것도 안넣고 싶을때 이거쓰면됨
    for _ in 0...r{
        result += "hello"
    }
    return result
}

// 매개변수를 여러개 둘려면 ... 으로 표시하면됨
func frin(name n : String...) -> String{
    var result : String = ""
    
    for f in n{
        result += "  hello "
        result += f
    }
    
    return result
}

//함수 호출할때는 전달인자 레이블을 써줘서 좀더 명화하게 호출함
print(sayHello(name : "lee", 2))

// 전달인자를 여러개로 설정해놨을 경우에는 , 로 구분해서 여러개 쓰면됨
print(frin(name : "a", "as", "asd"))
//: [Next](@next)
