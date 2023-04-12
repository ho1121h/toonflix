import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

// statefulWidget = 실시간 위젯
// stateless = 정지된
class App extends StatefulWidget {
  const App({super.key});
  @override
  State<App> createState() => _AppState(); // state 클래스
}

class _AppState extends State<App> {
  // int counter = 0; 단순한 프롬퍼티
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    //빌드 콘텍스트는 무엇인고
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle
                  ? const MyLargeTitle()
                  : const Text("nothing"), // Extract widget
              IconButton(
                  onPressed: toggleTitle,
                  icon: const Icon(
                    Icons.remove_red_eye, // -> 눈깔 아이콘 생성 눈알 열기 -> 빌드 , 닫기->디스포스
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  // ctrl + . 으로 Stateless -> StatefulWidget 변경
  const MyLargeTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0;

  @override
  void initState() {
    // initSate 는 build가 실행되기전에 실행됨
    super.initState();
    print("initState!");
  }

  @override
  void dispose() {
    // dispose는 위젯이 제거될때 실행됨 ex 구독해제나 리스너로 독립
    super.dispose();
    print("dispose!");
  }

  @override
  Widget build(BuildContext context) {
    // cotext는 부모클래스의 모든 정보를 담고있다. 위젯트리에 대한 정보를 담다
    print("build!");
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
