import 'package:awalnya_sih_coba2/pages/first_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layar 2'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Pilih nilai yang akan dikembalikan'),
            Container(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 99);
              },
              child: Text('Nilai 99'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 88);
              },
              child: Text('Nilai 88'),
            ),
          ],
        ),
      ),
    );
  }
}
