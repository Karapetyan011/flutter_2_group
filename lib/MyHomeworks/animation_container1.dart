import 'package:flutter/material.dart';


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
        AnimatedContainer(
          duration: const Duration(seconds: 3),
          curve: Curves.easeOutExpo,
          height: _toggle ? 150 : 400,
          width: _toggle ? 150 : 250,
          decoration: BoxDecoration(
              color: _toggle ? Colors.yellow : Colors.pink,
              borderRadius: const BorderRadius.all(Radius.circular(14.0))),
        ),
        Padding(
          padding: const EdgeInsets.all(38.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _toggle = !_toggle;
              });
            },
            child: const Text('Press me'),
          ),
        ),
        IconButton(onPressed: () {
          // Navigator.of(context)
          // Navigator.of(context).pushAndRemoveUntil(
          //     MaterialPageRoute(builder: (context) => const TestScreenNavigation(),
          //     ), (Route<dynamic>route) => false);
        }, icon: const Icon (
            Icons.add_link
        ),
        ),
      ],
    );
  }
}
