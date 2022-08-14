import UIKit
//프로퍼티 레퍼는 값을 지정해서 수정할때
//하드코딩을 안하기 위해서 저장된 셋팅을 접근해서 변경할때 쉽게 바꿀수 있도록
//만들어주는 코딩임


struct PlayerSetting{
    @UserDefaultsHelper(key:"initialSpeed",defaultValue : 1.0)
    var initialSpeed: Double
    
    @UserDefaultsHelper(key: "surpportGesture", defaultValue: true )
    var surpportGesture: Bool
}

//프로퍼티 레퍼임
@propertyWrapper
struct UserDefaultsHelper<Value>{
    let key: String
    let defaultValue : Value
    
    var wrappedValue : Value{
        get{
            UserDefaults.standard.object(forKey: key)as? Value ?? defaultValue
        }
        set{
            UserDefaults.standard.setValue(newValue, forKey: key)
        }
    }
}
//맨처음 프로퍼티 레퍼를 불러와서
//구조체로 만들어주는데 이 구조체는 값을 변경할때 그 값을 가져와서 새로운 값으로 바꿔주는 역할을 함
//그래서 겟으로 키에 해당하는 값을 가져와서 셋으로 새로운 벨류로 바꿔줌

var currentSetting = PlayerSetting()

currentSetting.initialSpeed
currentSetting.initialSpeed = 1.5
currentSetting.initialSpeed
//동작과정이 스트럭처 처음 지정할때 디폴트가 1.0임
//거기서 값을 변경하는 코드를 이렇게 간단하게 할수 있고
//그걸 지정해주면 프로퍼티 레퍼로 값을 변경해주는걸 쉽게 만들수 있음
//이렇게 하지 않으면 커런트 셋팅에서 이니털스피드 = 1.5
//이렇게 하나하나 수정해줘야하지만 프로퍼티 레퍼를 사용할경우 한줄로 처리가능

currentSetting.surpportGesture
currentSetting.surpportGesture = false
currentSetting.surpportGesture
