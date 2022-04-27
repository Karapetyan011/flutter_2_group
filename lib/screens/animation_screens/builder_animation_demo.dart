/// Created by HrAnT VitaNova
/// Date: 22.04.22 at 15:27

import 'package:flutter/material.dart';

class BuilderAnimationDemo extends StatefulWidget {
  const BuilderAnimationDemo({Key? key}) : super(key: key);

  @override
  _BuilderAnimationDemoState createState() => _BuilderAnimationDemoState();
}

class _BuilderAnimationDemoState extends State<BuilderAnimationDemo>
    with TickerProviderStateMixin {
  late Animation _starAnimation;
  late AnimationController _starAnimationController;

  bool toggle = false;

  @override
  void initState() {
    super.initState();
    _starAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    _starAnimation = Tween(begin: 40.0, end: 200.0).animate(CurvedAnimation(
        curve: Curves.linear, parent: _starAnimationController));

    _starAnimationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _starAnimationController.repeat();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _starAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Animated Builder',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            width: 200,
            child: AnimatedBuilder(
              animation: _starAnimationController,
              builder: (context, child) {
                return Center(
                  child: Center(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: _starAnimation.value,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          ElevatedButton(
            onPressed: () {
              toggle = !toggle;
              toggle == true
                  ? _starAnimationController.forward()
                  : _starAnimationController.stop();
            },
            child: const Text('START/ STOP'),
          )
        ],
      ),
    );
  }
}
