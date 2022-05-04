import 'package:flutter/material.dart';
import '../screens/animation_screens/animation_container1.dart';
import '../screens/animation_screens/animation_container4.dart';
import 'AnimationAlignDemo.dart';
import 'animation_container3.dart';

class AnimationManager extends StatefulWidget {
  const AnimationManager({Key? key}) : super(key: key);

  @override
  State<AnimationManager> createState() => _AnimationManagerState();
}

class _AnimationManagerState extends State<AnimationManager> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
     appBar: AppBar(
       title: const Text('My Custom Animations',
       style: TextStyle(color: Colors.black)
       ),
       backgroundColor: Colors.white,
       centerTitle: true,
       elevation: 10.0,
       bottom: const TabBar(
         labelColor: Colors.red,
         tabs: [
           Tab(text: 'Animation container'),
           Tab(text: '2'),
           Tab(text: '3'),
           Tab(text: '4'),
         ],
       ),
     ),
       body: const TabBarView(
         children:[
           AnimationContainer1(),
           AnimationAlignDemo(),
           AnimationContainer3(),
           AnimationContainer4(),
         ]
       )
      ),
    );
  }
}
