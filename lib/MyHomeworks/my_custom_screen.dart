import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
            ),
       // GestureDetector(onTap: _launchURL,
       // child: Image.asset(
       //   'assets/images/fb.png',
       //   width: 40,
       //   height: 40,
       // ),),
            const Text(
              'Register',
              style: TextStyle(
                fontSize: 34.0,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(7.0),
              child: Text(
                'Register to continue',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 21.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50.0,
                  ),
                  child: Image.asset(
                    'assets/fonts/ln.png',
                    width: 40,
                    height: 40,
                  ),
                  
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
// _launchURL() async {
//   const url = 'https://www.facebook.com/';
// }