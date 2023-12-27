import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool buttonClick = false;
  String buttonName = 'Click';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Ariq'),
        ),
        body: Center(
            child: currentIndex == 0
                ? SizedBox(
                    width: double.infinity,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  buttonClick = true;
                                  if (buttonClick) {
                                    buttonName = 'Clicked';
                                    buttonClick = false;
                                  } else {
                                    buttonName = 'Click';
                                  }
                                });
                              },
                              child: Text(buttonName)),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  buttonClick = true;
                                  if (buttonClick) {
                                    buttonName = 'Clicked';
                                  } else {
                                    buttonName = 'Click';
                                  }
                                });
                              },
                              child: Text(buttonName)),
                        ]),
                  )
                : Image.network(
                    'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif')),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person))
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
