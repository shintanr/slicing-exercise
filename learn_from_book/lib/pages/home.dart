import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> bahasa = ['java', 'Kotlin', 'Dart'];
  bool? selected1 = false;
  bool? selected2 = false;
  bool? selected3 = false;
  List<int> list = [];

  void onChanged1(bool? value) {
    setState(() {
      this.selected1 = value;
    });

    if (value == true)
      list.add(0);
    else
      list.remove(0);
    print(list);
  }

  void onChanged2(bool? value) {
    setState(() {
      this.selected2 = value;
    });
    if (value == true)
      list.add(1);
    else {
      list.remove(1);
    }
    print(list);
  }

  void onChanged3(bool? value) {
    setState(() {
      this.selected3 = value;
    });
    if (value == true)
      list.add(2);
    else
      list.remove(2);
    print(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo CheckBox'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text('Bahasa yang disukai'),
            Row(
              children: [
                Checkbox(
                  value: this.selected1,
                  onChanged: (bool? value) {
                    onChanged1(value);
                  },
                ),
                Container(
                  width: 8.0,
                ),
                Text(this.bahasa[0]),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: this.selected2,
                    onChanged: (bool? value) {
                      onChanged2(value);
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
