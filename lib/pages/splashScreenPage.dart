import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zomato_clone/pages/loginPage.dart';

class splashScreenPage extends StatefulWidget {
  splashScreenPage({Key? key}) : super(key: key);

  static const String pageId = 'splashScreenPage';

  @override
  State<splashScreenPage> createState() => _splashScreenPageState();
}

class _splashScreenPageState extends State<splashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(loginPage.pageId, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Container(
        width: double.infinity,
        child: Image(
          image: AssetImage(
            'assets/images/s1.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
