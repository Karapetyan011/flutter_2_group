/// Created by HrAnT

import 'package:flutter/material.dart';
import 'package:flutter_test_group_2/screens/animation_screens/animated_align_demo.dart';
import 'package:flutter_test_group_2/screens/animation_screens/animation_container_demo.dart';
import 'package:flutter_test_group_2/screens/animation_screens/animated_builder_demo.dart';
import 'package:flutter_test_group_2/screens/web_view_screen/demo_for_web_view_screen.dart';


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
              Tab(text: 'Animated Align'),
              Tab(text: '3'),
              Tab(text: 'animated Builder'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AnimationContainerDemo(),
            AnimatedAlignDemo(),
            DemoForWebViewScreen(
              mUrl:
                  'https://flutter.dev/?gclid=CjwKCAjw9qiTBhBbEiwAp-GE0WKd9gg79IvhUuBSFFiVFTk4iT_okqNqwk9x4iuRJelh2rLC-y_YWhoCwlYQAvD_BwE&gclsrc=aw.ds',
            ),
            AnimatedBuilderDemo(),
          ],
        ),
      ),
    );
  }
}
