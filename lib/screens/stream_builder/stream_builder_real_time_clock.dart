import 'dart:async';

import 'package:flutter/material.dart';

/// Created by HrAnt

class StreamBuilderRealTimeClock extends StatefulWidget {
  const StreamBuilderRealTimeClock({Key? key}) : super(key: key);

  @override
  _StreamBuilderRealTimeClockState createState() =>
      _StreamBuilderRealTimeClockState();
}

class _StreamBuilderRealTimeClockState
    extends State<StreamBuilderRealTimeClock> {
  final bool _running = true;

  Stream<String> _clock() async* {
    while (_running) {
      // Future.delayed(Duration duration, [FutureOr<T> computation()]): создает объект Future,(computation-հաշվարկ)
      // который запускается после временной задержки, указанной через первый параметр Duration.
      // Второй необязательный параметр указывает на функцию которая запускается после этой задержки.
      await Future<void>.delayed(
        const Duration(milliseconds: 1),
      );
      DateTime _now = DateTime.now(); // 20:47:56
      yield "${_now.hour} : ${_now.minute}: ${_now.millisecond}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Real-Time Clock App By HrAnT'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: _clock(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const SizedBox(
                height: 100.0,
                width: 100.0,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.purple,
                  strokeWidth: 6,
                ),
              );
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Divider(
                  color: Colors.purple,
                  thickness: 4,
                  indent: 32,
                  endIndent: 32,
                ),
                Text(
                  snapshot.data as String,
                  style: const TextStyle(
                    fontSize: 64,
                    color: Colors.purple,
                  ),
                ),
                const Divider(
                  color: Colors.purple,
                  thickness: 4,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
