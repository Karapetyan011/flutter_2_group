import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MYcheckbox(
            TextBeforeCheckbox: " Remember me ???",
            BoxColor: Colors.blue,
            TextFontSize: 15.0,
          ),
        ),
      ),
    );
  }
}

class MYcheckbox extends StatefulWidget {
  final String TextBeforeCheckbox;
  final Color BoxColor;
  final double TextFontSize;

  const MYcheckbox(
      {required this.TextBeforeCheckbox,
      required this.BoxColor,
      required this.TextFontSize,
      Key? key})
      : super(key: key);

  @override
  State<MYcheckbox> createState() => _MYcheckboxState(TextBeforeCheckbox,TextFontSize,BoxColor);
}

class _MYcheckboxState extends State<MYcheckbox> {
  bool? isChecked;

  String remember;
  Color boxColor;
  double fontsize;

  _MYcheckboxState(this.remember , this.fontsize , this.boxColor);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          remember,
          style: TextStyle(
            fontSize: fontsize,
          ),
        ),
        Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.all(Colors.red),
          overlayColor: MaterialStateProperty.all(Colors.blueAccent.shade100),
          focusColor: Colors.green,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
      ],
    );
  }
}
