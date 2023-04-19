import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  List<String> list = ['dart', 'java', 'kotlin', 'c++', 'c#', 'JavaScript'];
  String? item = 'dart';

  void onChanged(String? value) {
    setState(() {
      item = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo DropDownButton'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text('Item aktif: $item'),
            DropdownButton(
              value: item,
              items: list.map(
                (String val) {
                  return DropdownMenuItem(
                    value: val,
                    child: Row(
                      children: [
                        Icon(Icons.phone_android),
                        Text(val),
                      ],
                    ),
                  );
                },
              ).toList(),
              onChanged: (String? value) {
                onChanged(value);
              },
            )
          ],
        ),
      ),
    );
  }
}
