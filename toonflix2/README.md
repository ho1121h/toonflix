# toonflix2

A new Flutter project.

이 어플은 StatefulWidget 어플입니다.

이 위젯은 버튼을 누르면 상태가 변이하면 해당 상태에 따른 텍스트가 출력되도록 하였습니다.
flutter의 생명주기
1. initState()
build를 하기 전에 항상 먼저 실행된다.
대표적으로 API를 불러올 때 사용된다.

2. dispose()
화면에서 사라질 때 실행한다.

```
1. StatefulWidget 클래스 생성
2. override 하여 빌드클래스 생성
3. 콘텍스트 생성 -> 부모클래스의 정보를 가져옴 
4. MyLargeTitle 위젯 분리 생성
5. 토글생성 (조건을 부모클래스에 생성함)


```
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
