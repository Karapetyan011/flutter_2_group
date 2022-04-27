import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("I'm an App"),
            backgroundColor: Colors.red,
            centerTitle: true,
          ),
          // body: Container(
          //   color: Colors.blue,
          //   margin: EdgeInsets.fromLTRB(0, 70, 70, 0),
          //   child: Container(
          //     color: Colors.green,
          //     margin: EdgeInsets.fromLTRB(0, 150, 0, 150),
          //     child: Container(
          //       color: Colors.yellow,
          //       margin: EdgeInsets.fromLTRB(0, 30, 150, 30),
          //     ),
          //   ),
          //   //padding: EdgeInsets.all(200.0),
          // ),
          body: Container(
            color: Colors.yellow,
          ),
          floatingActionButton: Tooltip(
            waitDuration: Duration(seconds: 1),
            showDuration: Duration(seconds: 2),
            message: 'Text',
            child: ElevatedButton(
              onPressed: () {},
              onLongPress: () {
                Tooltip(
                  message: 'dfjghksfdhg',
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.red,
                ),
              ),
              child: const Icon(Icons.add),
            ),
          ),
        ),
      ),
    );
  }
}

//ToDo Hrant Example
class MyContainers extends StatelessWidget {
  const MyContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tmp = MediaQuery.of(context).size.width / 2.2;

    return Padding(
      padding: const EdgeInsets.only(top: 18.0, right: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              // child: Text('Hello'),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Row(
                  children: [
                    // Expanded(
                    //   child: Container(
                    //     height: tmp,
                    //     width: tmp,
                    //     color: Colors.yellow,
                    //   ),
                    // ),
                    // const Expanded(child: SizedBox()),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const Myapp());
}
