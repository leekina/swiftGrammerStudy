//: [Previous](@previous)
// 강제 추출
// nil값인데 강제추출하면 에러남
// 고로 맨 아래처럼 if문 사용해서 추출하는게 안정적임
import Foundation

var greeting = "Hello, playground"
var name: String?  = "MinHyeng"
var nameS : String = name!

print(name)
print(nameS)

if name != nil{
    print(name!)
}
else{
    print("nil")
}

//: [Next](@next)
