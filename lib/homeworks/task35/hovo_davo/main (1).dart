import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: "I'm an App",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
       body:  Container(
      color:Colors.red,


      child: Container(
        color: Colors.blue,
        margin: const EdgeInsets.only(right: 50.0,top: 15.0),

        child:Container(
          color: Colors.green,
          margin: const EdgeInsets.only(top: 200.0,bottom: 200.0),
          child: Container(
            color: Colors.yellow,
            margin: const EdgeInsets.only(top: 30.0,bottom: 30.0,right: 150.0),
          ),
        ) ,



      ),
    ),
    );

  }
}
