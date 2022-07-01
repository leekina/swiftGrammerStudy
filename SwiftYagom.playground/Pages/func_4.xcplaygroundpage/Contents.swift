//: [Previous](@previous)

import Foundation
//종료(retrun)되지 않는함수
//비반환 함수라고도 부름
//보통 오류던질때 씀
//이게 끝나면 프로그램이 종료되는거임
//돌려보면 오류로 끝나는걸 볼 수 있음
func crashAndBurn() -> Never{
    fatalError("something vary, vary bad happend")
}

//crashAndBurn()

func someFunction(isAllIsWell: Bool){
    guard isAllIsWell else{
        print("블라블라")
        crashAndBurn()
    }
    print("ㅁㅁㅁㅁㅁ")
}

someFunction(isAllIsWell: true)
//someFunction(isAllIsWell: false)
//요고 돌리면 오류

//반환값이 있지만 사용안할경우 원래는 오류가남
//하지만 @discrardableResult를 앞에 붙이면 반환값읊 사용하지 않아도 오류가 뜨지않음
@discardableResult func disResultSay(_ somthing: String) -> String{
    return somthing
}
disResultSay("hello")
//: [Next](@next)
