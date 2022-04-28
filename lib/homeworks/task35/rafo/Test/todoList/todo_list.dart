import 'package:flutter/material.dart';
import 'package:home/rafo/Test/todoList/mywidgets.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    initialRoute: '/',
    routes: {'/': (context) => MainScreen(), '/todo': (context) => MyApp()},
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("ToDo List"),
            backgroundColor: Colors.grey[900],
            centerTitle: true,
          ),
          body: MyBody(),
          floatingActionButton: MyFloatButton(
            function: refresh,
          )),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Main Screen"),
          backgroundColor: Colors.grey[900],
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(

                  onPressed: () {
                    setState(() {});
                    Navigator.pushNamed(context, '/todo');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 20.0,
                    width: MediaQuery.of(context).size.width / 5.0,
                    child: const Center(
                      child: Text(
                        "Start",

                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
