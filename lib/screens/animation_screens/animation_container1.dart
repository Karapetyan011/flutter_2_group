import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_group_2/screens/test_screen_for_navigation.dart';

class AnimationContainer1 extends StatefulWidget {
  const AnimationContainer1({Key? key}) : super(key: key);

  @override
  State<AnimationContainer1> createState() => _AnimationContainer1State();
}

class _AnimationContainer1State extends State<AnimationContainer1> {
  bool _toggle = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _toggle = !_toggle;
            });
          },
          child: AnimatedContainer(
            height: _toggle ? 150 : 400,
            width: _toggle ? 150 : 250,
            decoration: BoxDecoration(
              color: _toggle ? Colors.blue : Colors.pink,
              borderRadius: const BorderRadius.all(
                Radius.circular(22.0),
              ),
            ),
            duration: const Duration(seconds: 1),
            curve: Curves.easeInSine,
          ),
        ),
        IconButton(
          iconSize: 100,
          icon: const Icon(
            Icons.arrow_forward,
          ),
          onPressed: () {
            // Navigator.of(context).pushAndRemoveUntil(
            //   MaterialPageRoute(
            //     builder: (context) => const TestScreenForNavigation(),
            //   ),
            //   (Route<dynamic> route) => false,
            // );
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TestScreenForNavigation(),
              ),
            );
          },
        ),
      ],
    );
  }
}
