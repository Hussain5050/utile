

import 'package:flutter/material.dart';
class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[100],
          child: const Align(
            alignment: Alignment.center,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      )
      ,
    );
  }
}
