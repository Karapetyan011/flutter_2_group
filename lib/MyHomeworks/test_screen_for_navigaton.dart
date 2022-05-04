import 'package:flutter/material.dart';

class TestScreenNavigation extends StatelessWidget {
  const TestScreenNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test screen for navigation'),
      ),

      body: Column(
        children: [
          Container(
            color: Colors.pink,
            child: const Text(
              'Test screen for navigation',
              style: TextStyle(fontSize: 32.0),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 32.0),
            
          ),
        ],
      ),
    );
  }
}
