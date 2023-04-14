import 'package:chatting_app/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'yuChat',
              style: whiteTextStyle.copyWith(
                  fontSize: 40, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
