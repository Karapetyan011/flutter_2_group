import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Bones());
}

class Bones extends StatefulWidget {
  const Bones({Key? key}) : super(key: key);

  @override
  State<Bones> createState() => _BonesState();
}

class _BonesState extends State<Bones> {
  int leftdicenmb = 1;
  int rightdicenmb = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    child: Image.asset("assets/images/dice$leftdicenmb.png"),
                    onPressed: () {
                      setState(() {
                        leftdicenmb = Random().nextInt(6) + 1;
                        rightdicenmb = Random().nextInt(6) + 1;

                      });
                    }),
              ),
              Expanded(
                  child: ElevatedButton(
                      child: Image.asset("assets/images/dice$rightdicenmb.png"),
                      onPressed: () {
                        setState(() {
                          rightdicenmb = Random().nextInt(6) + 1;
                          leftdicenmb = Random().nextInt(6) + 1;

                        });
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
