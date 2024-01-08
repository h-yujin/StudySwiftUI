# StudySwiftUI

## 항목
1. SimpleView - SwiftUI 기본 요소
2. LayoutView - 여러 레이아웃
3. OnBoardingView - 첫 시작 화면
4. ListView - 리스트와 모델링, 추가와 삭제
5. SimpleListView - 리스트 Section
6. ModalView, ModelDetailView - Model창 열고, 닫기
7. NavigationView - NavigationStack, List, NavigationLink
8. MyTabView, TabDetailView - 탭뷰
9. MyApp, OnBoardingPageView. FirstListView - 온보딩, 탭뷰, 리스트를 활용한 간단한 화면 제작
 

---

## SwiftUI Controls

### Image
    Image(systemName: "photo.tv")
    .resizable()
    .scaledToFit()
    .frame(width: 200, height: 200)
            
:collision: scaleFit 한 후 resize는 할 수 없음.

    Image(systemName: "photo.tv")
    .scaledToFit()
    .resizable()
    .frame(width: 200, height: 200)

### Text
modifier에 따라 결과가 달라질 수 있음.

Button1 : padding을 넣고 배경컬러를 넣음

    Text("Button1")
     .padding()
     .background(.blue)
     .foregroundColor(.white)

Button2 : 배경컬러를 넣고 padding을 넣음
    
    Text("Button2")
    .background(.blue)
    .foregroundColor(.white)
    .padding()

### Spacer
화면에서 사용 가능한 공간 전체를 띄움


---

## SwiftUI

### Hashable
Swift에서 Set 타입의 값, Dictionay 타입의 Key는 Hashable 해야한다.  
Swift의 기본 타입은 String, Int 등은 자동으로 Hashable 하다.  
구조체를 Set타입으로 사용하기 위해서는 Hashable하게 채택해주어야 한다.  

### @State, @Binding
@State
1. SwiftUI에서 상태를 처리하는 방법
2. 뷰의 상태를 저장하는 프로퍼티로 상태 관리 주체킄 해당 뷰
3. 기봊ㄴ적으로 Private 선언이기에 다른 뷰와 값을 소통하려면 Binding을 이용
4. 값이 변경될 때마다 UI 업데이트

@Binding
1. 뷰와 상태를 바인딩 하는 방법
2. 상위 @State 변수를 전달 받아 하위 뷰에서 캐치해 변화 감지 및 연결
3. Binding은 다른 뷰가 소유한 속성을 연결하기에 소유권 및 저장공간이 없음


### ObservableObject, @Published
ObservableObject
1. 클래스 프로토콜, 관찰하는 어떠한 값이 변경되면 변경사항을 알려줌
2. 뷰에서 인스턴스 변화를 감시하기 위해 뷰모델 객체로 생성할 때 사용할 수 있음

@Published
1. ObservableObject를 구현한 클래스 내에서 프로퍼티 선언 시 사용
2. @Published로 선언된 프로퍼티를 뷰에서 관찰할 수 있음
3. ObservableObject의 objectWillChange.send()기능을 @Published 프로퍼티가 변경되면 자동으로 호출


### @ObservedObject, @StateObject
@ObservedObject
1. 뷰애서 ObservableObject 타입의 인스턴스 선언 시 사용
2. ObservableObject의 값이 업데이트되면 뷰를 업데이트

@StateObject
1. 뷰에서 ObservableObject 타입의 인스턴스 선언 시 사용
2. 뷰마다 하나의 인스턴스를 생성하며, 뷰가 사라지기 전까지 같은 인스턴스 유지
3. @ObservedObject의 뷰 렌더링 시 인스턴스 초기화 이슈 해결을 위한 방법
4. 매번 인스턴스가 새롭게 생성되는 것처럼 외부에서 주입 받는 경우가 아닌 최초 생성 선언 시에 @StateObject를 사용하는 것이 적절한 방법


### Envireonment
1. 미리 정의되어 있는 시스템 공유 데이터
2. 사용하려는 공유 데이터의 이름을 keyPath로 전달하여 사용
3. 시스템 공유 데이터는 가변하기에 var로 선언 필요
4. 뷰가 생성 되는 시점에 값이 자동으로 초기화 됨


### EnvironmentObject
1. ObservableObject를 통해 구현된 타입의 인스턴스를 전역적으로 공유하여 사용
2. 앱 전역에서 공통으로 시용할 데이터를 주입 및 사용

여러 뷰에서 전역으로 필요한 object라면 사용하기에 용이
:exclamation: 문제점
- 데이터 의존성 : 해당 객체의 의존성이 앱 전체에 펴질 수 있음 -> 코드 가독성, 유지보수에 어려움, 버그 유발이 쉬움
- 해당 뷰에서 동일한 EnvironmentObject를 참조하고 수정하면 데이터의 일관성 유지가 어려움 -> 데이터 관리 복잡도 증가
- 단위테스트, UI테스트 어려움
