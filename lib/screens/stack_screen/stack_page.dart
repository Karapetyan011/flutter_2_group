import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widget"),
      ),
      body: Center(
        child: Stack(
          // fit: StackFit.passthrough,
          children: <Widget>[
            Container(
              height: 300,
              width: 400,
              color: Colors.green,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Visibility(
                      visible: false,
                      child: Text(
                        'Top Widget: Green',
                        style: TextStyle(color: Colors.white, fontSize: 32.0),
                      ),
                    ),
                    Text(
                      'Top Widget: Green',
                      style: TextStyle(color: Colors.black, fontSize: 32),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Container(
                height: 100,
                width: 150,
                color: Colors.transparent,
                child: const Center(
                  child: Text(
                    'Middle Widget',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: false,
              child: Positioned(
                top: 20,
                left: 20,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.orange,
                  child: const Center(
                    child: Text(
                      'Bottom Widget',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
