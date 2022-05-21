
import 'package:flutter/material.dart';
import 'package:flutter_test_group_2/dio_json_serializable/user.dart';

import 'net_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  User? _userInfo;
  dynamic _name;
  dynamic _height;
  dynamic _weight;

  @override
  void initState() {
    NetUtil.request(
            url: 'https://run.mocky.io/v3/42f2828a-80a9-46bf-85df-679d4d8d4a7f')
        .then((value) => _userInfo = value)
        .catchError(
          (value) => debugPrint(value),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DIO'),
      ),
      body: Center(
        child: Text(
          _userInfo?.name ?? 'Hello',
          style: const TextStyle(
            fontSize: 34.0,
          ),
        ),
      ),
    );
  }
}
