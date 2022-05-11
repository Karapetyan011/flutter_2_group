import 'dart:async';
import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Created by HrAnt

class FlutterStreamBuilder extends StatefulWidget {
  const FlutterStreamBuilder({Key? key}) : super(key: key);

  @override
  _FlutterStreamBuilderState createState() => _FlutterStreamBuilderState();
}

class _FlutterStreamBuilderState extends State<FlutterStreamBuilder> {
  late double _height;
  late double _width;

  final imgStream = StreamController<Image>();

  int imgCounter = -1;

  final List<Image> imageList = [
    Image.asset(
      'assets/images/img_1.png',
      fit: BoxFit.contain,
    ),
    Image.asset(
      'assets/images/img_2.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/img_3.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/img_4.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/img_5.png',
      fit: BoxFit.cover,
    ),
  ];

  @override
  void dispose() {
    imgStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        height: _height,
        width: _width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  StreamBuilder(
                    stream: imgStream.stream,
                    builder: (BuildContext context,
                        AsyncSnapshot<dynamic> snapshot) {
                      if (!snapshot.hasData) {
                        return const SizedBox(
                          child: CircularProgressIndicator(
                            strokeWidth: 16,
                            backgroundColor: Colors.purple,
                            color: Colors.red,
                          ),
                          width: 100.0,
                          height: 100.0,
                        );
                      }

                      if (snapshot.connectionState == ConnectionState.done) {
                        if (kDebugMode) {
                          print('The End');
                        }
                      }

                      return Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: const BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        // Персонализируйте закругленные углы и украсьте изображение
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          child: snapshot.data,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      elevation: 10,
                      textStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {
                      imgCounter++;

                      if (imgCounter < imageList.length) {
                        imgStream.sink.add(imageList[imgCounter]);
                      } else {
                        imgStream.close();
                      }
                    },
                    child: Text(
                      "  click me  ".toUpperCase(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
