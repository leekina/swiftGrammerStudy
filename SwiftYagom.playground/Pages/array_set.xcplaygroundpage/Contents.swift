//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//배열
var array : [Any] = [Any]()
var array2 : [Any] = Array<Any>()
//둘은 정확히 같은 코드임

var names : [String] = ["a","as","asd","asdf"]
names.remove(at: 1)
print(names)

var na: Set<String> = ["asdf","asdfasdf","asa","aaaa"]

print(type(of: na))
//셋은 축약형 없음
//걍 입력하면 Array됨

let en1 : Set<String> = ["e1","e2","e3"]
let en2 : Set<String> = ["e1","v2","v3","v4","v5"]

//교집합
let interactionSet : Set<String> = en1.intersection(en2)

// 베타적 논리합(교집합 제외 다)
let symmetricDiffSet : Set<String> = en1.symmetricDifference(en2)

// 합집합
let unionSet : Set<String> = en1.union(en2)

// 차집합
let subSet : Set<String> = en1.subtracting(en2)

// 다 is 붙여서 bool로 나타낼수도 있음


en1.randomElement() //랜덤으로 하나뽑기
var n1 : [Int] = [1,2,3,4,5]
var n2 = n1.shuffled() //n1배열을 섞은걸 만들어 다른 배열에 저장
n1.shuffle() //n1 배열 자체를 섞음

//Set는 순서없음 -> shuffle 안됨
//dictionary는 키,값이 쌍을이룬걸 섞음



