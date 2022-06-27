
import Foundation

for i in 1...10{
    if i.isMultiple(of: 3){ // 3번마다
        print("\(i) == 3의 배수")
        continue
    }
    print("\(i) == 자기꺼 하시죠")
}

var names: [String] = ["as", "asd", "asdf", "asdfa"]

while names.isEmpty == false {
    print("asdfasd\(names.removeFirst())")
}


//숫자만큼 반복하고 그 숫자 배열에서 삭제하는 함수
var numbers: [Int] = [5, 232, 6, 4125]

numberLoop : for num in numbers{
    if num > 5 || num < 1{
        continue numberLoop
    }
    
    var count: Int = 0
    
    // 숫자만큼 프린터하고
    printLoop: while true{
        print(num)
        count += 1
    
        if count == num{
            break printLoop
        }
    }
    // 숫자 삭제
removeLoop: while true{
    if numbers.first != num{
        break numberLoop
    }
    numbers.removeFirst()
}
}

print(numbers)



