/// Created by HrAnT
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_group_2/screens/grid_view_screen/grid_view_builder.dart';
import 'package:flutter_test_group_2/screens/grid_view_screen/grid_view_count/grid_view_count.dart';
import 'package:flutter_test_group_2/screens/grid_view_screen/grid_view_extent.dart';
import 'package:flutter_test_group_2/screens/stack_screen/stack_page.dart';
import 'package:flutter_test_group_2/utils/my_flutter_app_icons.dart';

import 'widgets/my_custom_input.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: MyCustomApp(),
      // home: AnimationManager(),
      // home: DicePage(),
      // home: ListViewPage(),
      // home: PianoApp(),
      // home: SWPage(),
      // home:FlutterStreamBuilder()
      //home: StreamBuilderRealTimeClock(),
      // home: GridViewCount(),
      home: StackPage(),
      // home: GridViewBuilder(),
      // home: GridViewExtent(),
    );
  }
}

class MyCustomApp extends StatelessWidget {
  const MyCustomApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.pink,
              Colors.purple,
              Colors.white,
              Colors.redAccent,
            ],
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('press me'),
                    ),
                    Container(
                      height: 400,
                      width: 40,
                      color: Colors.yellow,
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2020/06/01/22/23/eye-5248678_960_720.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                    // const MyCustomText(
                    //   mText: 'Login',
                    //   mColor: Colors.pink,
                    //   mFontSize: 32.0,
                    //   mFontWeight: FontWeight.bold,
                    // ),
                    // const MyCustomText(
                    //   mText: 'Password',
                    //   mColor: Colors.blue,
                    //   mFontSize: 56.0,
                    //   mFontWeight: FontWeight.w100,
                    // ),

                    MyCustomInput(
                      mTextInputType: TextInputType.text,
                      mMaxLength: 18,
                      mHintText: 'Login',
                      mSuffixIconChanged: false,
                    ),
                    MyCustomInput(
                      mTextInputType: TextInputType.text,
                      mMaxLength: 18,
                      mHintText: 'Password',
                      mObscureText: true,
                      mSuffixVisibility: true,
                      mSuffixIconChanged: false,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Login')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Remember me',
                            style:
                                TextStyle(color: Colors.pink, fontSize: 18.0),
                          ),
                          Checkbox(
                            value: false,
                            checkColor: Colors.pink,
                            activeColor: Colors.blue,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      MyFlutterApp.facebook,
                      size: 44.0,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.blueAccent,
                        ),
                      ),
                      onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text(
                            'Alert Dialog',
                          ),
                          actionsAlignment: MainAxisAlignment.spaceAround,
                          content: const Text(
                            'Content Message',
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                if (kDebugMode) {
                                  print('hello world');
                                }
                              },
                              child: const Text(
                                'Ok',
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Cancel",
                              ),
                            ),
                          ],
                        ),
                      ),
                      child: const Text(
                        'Show Alert Dialog',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),

                    // GestureDetector(
                    //   onTap: () {
                    //     print('On Tap');
                    //   },
                    //   onLongPress: () {
                    //     print('On Long Pressed');
                    //   },
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(top: 38.0),
                    //     child: Container(
                    //       padding: const EdgeInsets.symmetric(
                    //           horizontal: 18.0, vertical: 8.0),
                    //       decoration: const BoxDecoration(
                    //         color: Colors.purple,
                    //         borderRadius: BorderRadius.all(
                    //           Radius.circular(80.0),
                    //         ),
                    //       ),
                    //       child: const Text(
                    //         'Press me',
                    //         style: TextStyle(
                    //           fontSize: 22.0,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 48.0),
                    //   child: Tooltip(
                    //     textStyle: const TextStyle(
                    //         backgroundColor: Colors.yellow,
                    //         color: Colors.white,
                    //         fontSize: 18.0),
                    //     showDuration: const Duration(
                    //       seconds: 3,
                    //     ),
                    //     message: 'Add button for adding',
                    //     child: ElevatedButton(
                    //       onPressed: () {},
                    //       child: const Icon(
                    //         Icons.add,
                    //         size: 50,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
