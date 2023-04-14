import 'package:chatting_app/shared/theme.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 45,
            ),
            SizedBox(
              width: 53,
            ),
            Row(
              children: [
                SizedBox(
                  width: 53,
                ),
                Text(
                  'Get Closer To EveryOne',
                  overflow: TextOverflow.ellipsis,
                  style: blackTextStyle.copyWith(
                      fontSize: 36, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              'Helps you to contact everyone with just easy way',
              style: blackTextStyle.copyWith(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
