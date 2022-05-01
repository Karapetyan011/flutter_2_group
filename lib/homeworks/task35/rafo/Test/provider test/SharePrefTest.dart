import 'package:flutter/material.dart';
import 'package:flutter_test_group_2/homeworks/task35/rafo/Test/provider%20test/prvdtest.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) =>
          ProviderTest()
        ,
      )
    ],
    child: ShareTest(),),
  );
}

class ShareTest extends StatelessWidget {
  const ShareTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderTest>(builder: (context, provider, _) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  provider.incrimente();
                },
                child: Container(
                  height: provider.height,
                  width: 100,
                ),
              ),
              Text("${provider.aCounter}",
              style: const TextStyle(
                fontSize: 20.0,
              ),),
            ],
          ),
        ),
      );
    });
  }
}
