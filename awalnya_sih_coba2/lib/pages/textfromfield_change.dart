import 'package:flutter/material.dart';

class DemoChangeTFF extends StatefulWidget {
  const DemoChangeTFF({super.key});

  @override
  State<DemoChangeTFF> createState() => _DemoChangeTFFState();
}

class _DemoChangeTFFState extends State<DemoChangeTFF> {
  final myController = TextEditingController();

  void printValue() {
    print('Text pada kommponen TextField ${myController.text}');
  }

  @override
  void initState() {
    super.initState();
    myController.addListener(printValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo TextFormField Changed'),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: myController,
                decoration: InputDecoration(
                  hintText: 'Ketikkan teks di sini',
                ),
                autofocus: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
