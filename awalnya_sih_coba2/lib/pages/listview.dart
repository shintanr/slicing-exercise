import 'package:flutter/material.dart';

class DemoListView extends StatefulWidget {
  const DemoListView({super.key});

  @override
  State<DemoListView> createState() => _DemoListViewState();
}

class _DemoListViewState extends State<DemoListView> {
  List<Widget> createItems(int count) {
    List<Widget> items = [];

    for (var i = 0; i < count; i++) {
      items.add(ListTile(
        title: Text('Item ${i + 1}'),
        leading: Icon(Icons.person),
        trailing: Icon(Icons.delete),
      ));
      items.add(
        Divider(
          color: Colors.black26,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo DemoListView'),
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: createItems(10),
      ),
    );
  }
}
