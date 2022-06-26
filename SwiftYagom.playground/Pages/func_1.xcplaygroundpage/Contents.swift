//: [Previous](@previous)

// swift의 함수 사용 정의
// 파라미터 타입형 무조건 안적어도됨
// 특히 축약형 적을때는 안적어도돋미

import Foundation

func hello(name: String) -> String{
    return "자기꺼 하시죠 \(name)!"
}

func hell() -> String{
    return "adsf"
}
func nopram(){
    print("asdfdddddd")
    
}


let helloJ : String = hello(name : "이거보는 사람님 ")
print(helloJ)
print(hell())
print(nopram())
print("asdfadf")


//: [Next](@next)
