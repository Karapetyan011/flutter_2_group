import 'package:flutter/material.dart';

class SWPage extends StatelessWidget {
  const SWPage({Key? key}) : super(key: key);

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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Planets? _planetsInfo;
  int _count = 8;
  dynamic _results;
  dynamic _next;

  @override
  void didChangeDependencies() {
    debugPrint('worked didChangeDependencies()');
    super.didChangeDependencies();
  }

  @override
  void initState() {
    fetchSWAPIData().then((value) => _planetsInfo = value);
    debugPrint('worked initState()');
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    debugPrint('worked didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyanAccent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: Container(
                  width: double.infinity,
                  color: Colors.purpleAccent,
                  child: Text(
                    'Response count is =>\n\n $_count',
                    style: const TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: Container(
                  width: double.infinity,
                  color: Colors.greenAccent,
                  child: Text(
                    'Response next is => \n\n$_next',
                    style: const TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: Container(
                  width: double.infinity,
                  color: Colors.deepOrange,
                  child: Text(
                    'Response results is => \n\n$_results',
                    style: const TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> fetchSWAPIData() async {
    return await StarWarsS().fetchDataFromSWApi().then(
          (value) async {
        if (value != null) {
          _planetsInfo = value;
          setState(() {
            _count = _planetsInfo!.count!.toInt();
            _next = _planetsInfo!.next!;
            _results = _planetsInfo!.results!;
          });
          return _planetsInfo;
        }
      },
    ).catchError((_) {
      throw Exception();
    });
  }
}

class StarWarsS {
  fetchDataFromSWApi() {}
}

class Planets {
  get count => null;

  get next => null;

  get results => null;
}


