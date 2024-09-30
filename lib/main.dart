import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // String output = 'hello';
  bool isBlue = true;

  @override
  Widget build(BuildContext context) {
    print('buld called');
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                color: isBlue ? Colors.blue : Colors.yellow,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isBlue = !isBlue;
                    // output = 'Hi';
                  });
                  // print('$output button pressed ');
                },
                child: Text('Press'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
