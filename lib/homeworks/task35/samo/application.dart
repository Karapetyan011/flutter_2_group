import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//       home: Container(
//           color: Colors.red,
//           padding: const EdgeInsets.only(top: 80),
//           child: Container(
//             color: Colors.redAccent,
//             padding: const EdgeInsets.only(top: 25, right: 65),
//             child: Container(
//               color: Colors.blue,
//               padding: const EdgeInsets.only(top: 150.0, bottom: 150),
//               child: Container(
//                 color: Colors.green,
//                 padding: const EdgeInsets.only(top: 20, right: 150, bottom: 20),
//                 child: Container(
//                   color: Colors.yellow,
//                 ),
//               ),
//             ),
//           )),
//     );
//   }
// }

      home: Container(
          color: Colors.blue,
          padding: const EdgeInsets.only(top: 70),
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.only(top: 100, bottom: 250),
            child: Container(
              color: Colors.orangeAccent,
              padding: const EdgeInsets.only(top: 0.0),
              child: Row(
                children: [
                  Container(
                    width: 180,
                    color: Colors.blue,
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Column(
                      children: [
                        Container(
                          height: 140,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
