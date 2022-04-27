import 'dart:ui';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Squares"),
          centerTitle: true,
        ),
        // body: Column(
        //   children: [
        //     Row(
        //       children: [
        //         Expanded(
        //           flex: 2,
        //           child: Container(
        //             child: const Center(
        //                 child: Text(
        //                   "1",
        //                   style: TextStyle(
        //                     fontSize: 70,
        //                     color: Colors.white,
        //                   ),
        //                 )),
        //             color: Colors.red,
        //             height: 100,
        //           ),
        //         ),
        //         Expanded(
        //           flex: 1,
        //           child: Container(
        //             child: const Center(
        //                 child: Text(
        //                   "2",
        //                   style: TextStyle(
        //                     fontSize: 70,
        //                     color: Colors.white,
        //                   ),
        //                 )),
        //             color: Colors.yellow,
        //             height: 100,
        //           ),
        //         ),
        //       ],
        //     ),
        //     Row(
        //       children: [
        //         Expanded(
        //           flex: 1,
        //           child: Container(
        //             child: const Center(
        //                 child: Text(
        //                   "3",
        //                   style: TextStyle(
        //                     fontSize: 70,
        //                     color: Colors.white,
        //                   ),
        //                 )),
        //             color: Colors.green,
        //             height: 200,
        //           ),
        //         ),
        //         Expanded(
        //           flex: 2,
        //           child: Column(
        //             children: [
        //               Row(
        //                 children: [
        //                   Expanded(
        //                     flex: 1,
        //                     child: Container(
        //                       child: const Center(
        //                           child: Text(
        //                             "5",
        //                             style: TextStyle(
        //                               fontSize: 70,
        //                               color: Colors.white,
        //                             ),
        //                           )),
        //                       color: Colors.purple,
        //                       height: 100,
        //                     ),
        //                   ),
        //                   Expanded(
        //                     flex: 1,
        //                     child: Container(
        //                       color: Colors.yellow,
        //                       height: 100,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //               Container(
        //                 child: const Center(
        //                     child: Text(
        //                       "4",
        //                       style: TextStyle(
        //                         fontSize: 70,
        //                         color: Colors.white,
        //                       ),
        //                     )),
        //                 color: Colors.blue,
        //                 width: 300,
        //                 height: 100,
        //               )
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        body: const MyContainer(),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tmp = MediaQuery.of(context).size.height / 3.2;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                height: tmp / 2,
                color: Colors.red,
                child: const Text(
                  '1',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 56.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: tmp / 2,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(color: Colors.orange)),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: tmp,
                color: Colors.green,
                child: const Text(
                  '4',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 56.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: tmp / 2,
                          color: Colors.purple,
                          child: const Text(
                            '5',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 56.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: const Alignment(0, -2.4),
                          height: tmp / 2,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border.all(color: Colors.orange)),
                          child: const Text(
                            '2',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 56.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: tmp / 2,
                    color: Colors.blue,
                    child: const Text(
                      '3',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 56.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

void main() {
  runApp(const MyApp());
}
