## 이미지 검색 앱으로 알아보는 클린 아키텍처와 테스트 코드 작성기

### 🤷🏻 What

### 🚀 How
검색창에 원하는 이미지를 검색합니다.

![search_imgage_intro](https://user-images.githubusercontent.com/85836879/176201825-688daacb-b543-4ef0-be7a-ef5189a4583d.gif)

### 💡 Tips

### 📖 Review
PixabayApi 클래스의 의존성을 화면 내부에서 구현하지 않고 InheritedWidget을 상속받아 widget tree에 있는 PixabayApi 클래스를 사용하도록 주입하였다. 

가변 객체인 photo list를 InheritedWidget 내부의 Stream으로 대체하여 코드 리펙토링을 할 수 있었다.

mokito 패키지를 이용해 Client 가짜 객체를 만들어 PixabayApi를 테스트할 수 있었다.

기존에 직접 입력한 model 중 photo 객체를 JsonSerializable 패키지를 이용해 json 직렬화와 역직렬화에 필요한 코드를 자동으로 생성하였다.

Equatable 패키지를 이용해 equals, hashCode를 재정의하고 상속받은 객체를 const 객체 (불변 객체)로 만들어 주었다.
