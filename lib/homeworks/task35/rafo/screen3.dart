import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp());
}


class Myapp extends StatelessWidget {
  const Myapp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Rows & Columns"
            ),
          ),
        body: const MyScreen(
        ),
        ),

      ),
    );
  }
}


class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      //color: Colors.grey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.yellow,
                height: MediaQuery.of(context).size.height/8,
                width: MediaQuery.of(context).size.width / 2,
              ),
              Container(
                color: Colors.blue,
                height: MediaQuery.of(context).size.height/8,
                width: MediaQuery.of(context).size.width / 2,
              )
            ],
          ),
          Container(
            color: Colors.orange,
            height: MediaQuery.of(context).size.height/4,
            width: MediaQuery.of(context).size.width / 2,
          )
        ],
      ),
    );
  }
}

