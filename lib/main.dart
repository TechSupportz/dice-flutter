import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.blue[500],
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset('images/dice1.png'),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: Image.asset('images/dice1.png'),
                  ),
                ],
              ),
            ),
            flex: 2,
          ),
          ElevatedButton(
            onPressed: () => debugPrint('click'),
            child: const Text('Click me to roll these dice'),
          ),
        ],
      ),
    );
  }
}
