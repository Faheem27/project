// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 50,
        width: 50,
        child: CircularProgressIndicator(
          backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation(Colors.green),
        ),
      ),
    );
  }
}
