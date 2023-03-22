import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';

// class Player {
//   String? name; //이름을 가질수도 안가질수도있다.
//   //이러면 required 를 안써도됨
//   Player();
// }

void main() {
  // var hong = Player();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override // 부모 클래스에 오버라이드
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //제일 왼쪽으로
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Welcome back",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Text(
                'Total Blance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '\$5 194 382',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                // 버튼 추가
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // 버튼 사이공간
                children: const [
                  Button(
                    text: 'Transfer',
                    bgColor: Color(0XFFF1B33B),
                    textColor: Colors.black,
                  ),
                  Button(
                    text: 'Request',
                    bgColor: Color(0xFF1F2123),
                    textColor: Colors.white,
                  ), // 새로운 클래스를 생성하여 재사용함
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
