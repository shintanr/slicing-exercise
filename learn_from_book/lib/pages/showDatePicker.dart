import 'package:flutter/material.dart';

class ShowDatePicker extends StatefulWidget {
  const ShowDatePicker({super.key});

  @override
  State<ShowDatePicker> createState() => _ShowDatePickerState();
}

class _ShowDatePickerState extends State<ShowDatePicker> {
  DateTime date = DateTime.now();
  Future<Null> selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: this.date,
      firstDate: DateTime(2019),
      lastDate: DateTime(2030),
    );

    if (selected != null && selected != this.date) {
      setState(() {
        this.date = selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo ShowDatePicker'),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text('Tanggal yang dipilih ${this.date.toString()}'),
            ElevatedButton(
                onPressed: () {
                  selectDate(context);
                },
                child: Text('Pilih tanggal'))
          ],
        ),
      ),
    );
  }
}
