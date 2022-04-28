import 'dart:math';

import 'package:flutter/material.dart';

const topRow = {0, 1, 2};
const midRow = {3, 4, 5};
const butRow = {6, 7, 8};
const leftCol = {0, 3, 6};
const midCol = {1, 4, 7};
const rightCol = {2, 5, 8};
const leftCross = {0, 4, 8};
const rightCross = {2, 4, 6};

void main() {
  runApp(MyGame());
}

class MyGame extends StatefulWidget {
  const MyGame({Key? key}) : super(key: key);

  @override
  State<MyGame> createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> with TickerProviderStateMixin {
  late AnimationController animCtrl;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Testing"),
          ),
          body: MyTestWidget(),
        ),
      ),
    );
  }
}

class MyTestWidget extends StatefulWidget {
  const MyTestWidget({Key? key}) : super(key: key);

  @override
  State<MyTestWidget> createState() => _MyTestWidgetState();
}

class _MyTestWidgetState extends State<MyTestWidget> {
  int? winnerNumber;
  List myList = List.filled(9, false);
  List pcList = List.filled(9, false);

  Set mySteps = {};
  Set pcSteps = {};

  clearAll() {
    mySteps.clear();
    pcSteps.clear();
    for (int i = 0; i < myList.length; i++) {
      myList[i] = false;
    }
    for (int i = 0; i < pcList.length; i++) {
      pcList[i] = false;
    }
  }

  int stepDone(int index) {
    mySteps.add(index);
    if (checkWin(mySteps)) {
      return 1;
    }
    ;
    if (mySteps.length + pcSteps.length == 9) {
      return 4;
    }

    var random = Random().nextInt(8);
    while (pcSteps.contains(random) || mySteps.contains(random)) {
      random = Random().nextInt(8);
    }
    pcSteps.add(random);
    pcList[random] = true;
    if (checkWin(pcSteps)) {
      return 2;
    }

    return 0;
  }

  bool checkWin(Set aSet) {
    if (aSet.containsAll(topRow) ||
        aSet.containsAll(midRow) ||
        aSet.containsAll(butRow) ||
        aSet.containsAll(leftCol) ||
        aSet.containsAll(rightCol) ||
        aSet.containsAll(midCol) ||
        aSet.containsAll(leftCross) ||
        aSet.containsAll(rightCross)) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: MediaQuery.of(context).size.width / 3,
          childAspectRatio: 1.0,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            if (myList[index] == true || pcList[index] == true) {
              print("111");
              return;
            }
            winnerNumber = stepDone(index);

            setState(() {
              myList[index] = true;

              if (winnerNumber == 1) {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Text("You Win"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                setState(() {
                                  clearAll();
                                });
                              },
                              child: Container(
                                height: 30,
                                width: 40,
                                child: const Text("Again"),
                              ))
                        ],
                      );
                    });

                return;
              }
              ;
              if (winnerNumber == 2) {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Text("Computer Wins"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Navigator.of(context).pop();
                                  setState(() {
                                    clearAll();
                                  });
                                });
                              },
                              child: Container(
                                height: 30,
                                width: 40,
                                child: const Text("Again"),
                              ))
                        ],
                      );
                    });

                return;
              }
              ;
              if (winnerNumber == 4) {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Text("Draw"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Navigator.of(context).pop();
                                  setState(() {
                                    clearAll();
                                  });
                                });
                              },
                              child: Container(
                                height: 30,
                                width: 40,
                                child: const Text("Again"),
                              ))
                        ],
                      );
                    });
                return;
              }
            });
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: Center(
              child: Text(
                myList[index] == true
                    ? "X"
                    : pcList[index] == true
                        ? "O"
                        : " ",
                style: TextStyle(
                  fontSize: 80,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
