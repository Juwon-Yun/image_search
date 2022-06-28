## 이미지 검색 앱으로 알아보는 클린 아키텍처와 테스트 코드 작성기

### 🤷🏻 What

### 🚀 How
검색창에 원하는 이미지를 검색합니다.

![search_imgage_intro](https://user-images.githubusercontent.com/85836879/176201825-688daacb-b543-4ef0-be7a-ef5189a4583d.gif)

### 💡 Tips

### 📖 Review
PixabayApi 클래스의 의존성을 화면 내부에서 구현하지 않고 InheritedWidget을 상속받아 widget tree에 있는 PixabayApi 클래스를 사용하도록 주입하였다. 
