import 'package:flutter/material.dart';
import 'package:flutter_test_group_2/screens/animation_screens/animation_container1.dart';
import 'package:flutter_test_group_2/screens/animation_screens/animation_container2.dart';

import 'animation_container3.dart';
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
        body: const TabBarView(
          children: [
            AnimationContainer1(),
            AnimationContainer2(),
            AnimationContainer3(),
            AnimationContainer4(),
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
