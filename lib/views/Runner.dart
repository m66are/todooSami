import 'package:flutter/material.dart';
import 'package:todoo/views/HomeView/HomeView.dart';

class Runner extends StatelessWidget {
  const Runner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
