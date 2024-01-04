# StudySwiftUI

## 항목
1. SimpleView - SwiftUI 기본 요소
2. LayoutView - 여러 레이아웃
3. OnBoardingView - 첫 시작 화면
 

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
