// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), () async {
      Navigator.pushReplacementNamed(context, '/cardPage');
    });

    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.cover,
          ),
        )),
      ),
    );
  }
}
