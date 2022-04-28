import 'package:flutter/material.dart';

List myList = [];

class MyBody extends StatefulWidget {
   MyBody({Key? key}) : super(key: key);

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  void initState() {
    super.initState();

    // myList.addAll(["Do homeworks", "Go to work", "Meeting"]);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myList.length,
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          onDismissed: (direction) {
            setState(() {
              myList.removeAt(myList.length - index - 1);
            });
          },
          direction: DismissDirection.horizontal,
          key: UniqueKey(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Card(
              child: ListTile(
                trailing: IconButton(
                  onPressed: () {
                    setState(
                      () {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Do you really want to delete ?'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'No'),
                                child: const Text('No'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(this.context);
                                  setState(
                                    () {
                                      myList.removeAt(myList.length - index - 1);
                                    },
                                  );
                                },
                                child: const Text('Yes'),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.delete),
                ),
                title: Text(
                  myList[myList.length - index - 1],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 40),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class MyFloatButton extends StatefulWidget {
  final Function function;

  const MyFloatButton({
    Key? key,
    required this.function,
  }) : super(key: key);

  @override
  State<MyFloatButton> createState() => _MyFloatButtonState();
}

class _MyFloatButtonState extends State<MyFloatButton> {
  final _ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        await myDialog();

        setState(() {});
      },
      child: const Icon(Icons.exposure_plus_1_sharp),
    );
  }

  Future myDialog() => showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) => AlertDialog(
            title: const Text('Add something to your ToDo List'),
            content: TextField(
              onChanged: (value) {
                //  _textField = value;
                //  _ctrl.text = value;
              },
              controller: _ctrl,
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    return;
                  },
                  child: const Text("Cancel")),
              TextButton(
                  onPressed: () {


                    setState((){
                      myList.add(_ctrl.text);
                      widget.function();
                    });

                    _ctrl.clear();

                    Navigator.pop(context);
                  },
                  child: const Text("OK"))
            ],
          ),
        );
      });
}
