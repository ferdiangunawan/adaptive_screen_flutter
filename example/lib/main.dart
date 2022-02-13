import 'package:adaptive_screen_flutter/adaptive_screen_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  ScreenInit.setWebBreakPoint(1250);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adaptive Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveScreen(
        mobile: Container(
          color: Colors.blue,
          child: const Center(
            child: Text('Ini Mobile'),
          ),
        ),
        tab: Container(
          color: Colors.green,
          child: const Center(
            child: Text('Ini Tab'),
          ),
        ),
        web: Container(
          color: Colors.yellow,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Ini Web'),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const SecondPage()));
                    },
                    child: const Text('To Second page'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second page'),
      ),
      body: const Center(
        child: Text('Second page'),
      ),
    );
  }
}
