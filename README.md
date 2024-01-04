# StudySwiftUI

## 항목
1. SimpleView - SwiftUI 기본 요소
2. LayoutView - 여러 레이아웃
3. OnBoardingView - 첫 시작 화면
4. ListView - 리스트와 모델링, 추가와 삭제
 

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

### Hashable
Swift에서 Set 타입의 값, Dictionay 타입의 Key는 Hashable 해야한다.  
Swift의 기본 타입은 String, Int 등은 자동으로 Hashable 하다.  
구조체를 Set타입으로 사용하기 위해서는 Hashable하게 채택해주어야 한다.  



