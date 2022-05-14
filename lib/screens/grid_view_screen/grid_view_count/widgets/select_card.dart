import 'package:flutter/material.dart';

import '../my_custom_list.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.myCustomList}) : super(key: key);
  final MyCustomList myCustomList;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Icon(
                myCustomList.icon,
                size: 50.0,
              ),
            ),
            Text(
              myCustomList.title,
              style: const TextStyle(
                color: Colors.purple,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
