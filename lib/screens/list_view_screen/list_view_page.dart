import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        centerTitle: true,
        elevation: 12.0,
        title: const Text('List View Page'),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ListView(
            //   shrinkWrap: true,
            //   children: const [
            //     ListTile(
            //       tileColor: Colors.grey,
            //       leading: Icon(Icons.favorite),
            //       title: Text('Bob mcCarley'),
            //       subtitle: Text('Operator'),
            //     ),
            //     ListTile(
            //       tileColor: Colors.yellow,
            //       leading: Icon(Icons.favorite),
            //       title: Text('Bob mcCarley'),
            //       subtitle: Text('Operator'),
            //     ),
            //     ListTile(
            //       tileColor: Colors.green,
            //       leading: Icon(Icons.favorite),
            //       title: Text('Bob mcCarley'),
            //       subtitle: Text('Operator'),
            //     ),
            //     ListTile(
            //       tileColor: Colors.blueAccent,
            //       leading: Icon(Icons.favorite),
            //       title: Text('Bob mcCarley'),
            //       subtitle: Text('Operator'),
            //     ),
            //   ],
            // )
            ListView.builder(
              itemCount: 33,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: ListTile(
                    tileColor: Colors.yellow,
                    leading: Icon(Icons.star),
                    title: Text('TITLE'),
                    subtitle: Text('SUB TITLE'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
