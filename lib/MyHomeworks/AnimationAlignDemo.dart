import 'package:flutter/material.dart';

class AnimationAlignDemo extends StatefulWidget {
  const AnimationAlignDemo({Key? key}) : super(key: key);

  @override
  State<AnimationAlignDemo> createState() => _AnimationAlignDemoState();
}

class _AnimationAlignDemoState extends State<AnimationAlignDemo> {
  static const _alignments = [
    Alignment.topCenter,
    Alignment.bottomCenter,
  ];
  var _index = 0;

  AlignmentGeometry get _alignment => _alignments[_index % _alignments.length];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  _index++;
                });
              },
              child: AnimatedAlign(
                alignment: _alignment,
                duration: const Duration(seconds: 2),
                curve: Curves.easeInOutBack,
                child: Image.asset(
                  'assets/images/penny.png',
                  height: 200,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
