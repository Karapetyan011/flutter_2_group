import 'package:flutter/material.dart';
import 'package:flutter_test_group_2/screens/animation_screens/animated_align_demo.dart';
import 'package:flutter_test_group_2/screens/animation_screens/animation_container1.dart';
import 'package:flutter_test_group_2/screens/animation_screens/builder_animation_demo.dart';

import 'animation_container4.dart';

class AnimationManager extends StatefulWidget {
  const AnimationManager({Key? key}) : super(key: key);

  @override
  State<AnimationManager> createState() => _AnimationManagerState();
}

class _AnimationManagerState extends State<AnimationManager> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Custom Animations',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 10.0,
          bottom: const TabBar(
            labelColor: Colors.purple,
            tabs: [
              Tab(text: 'Animation Container'),
              Tab(text: '2'),
              Tab(text: '3'),
              Tab(text: '4'),
            ],
          ),
        ),
        body:  TabBarView(
          children: [
            const AnimationContainer1(),
            const AnimatedAlignDemo(),
            const AnimationContainer4(),
            BuilderAnimationDemo(),
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.face),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.favorite),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.radio),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.unarchive_sharp),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
