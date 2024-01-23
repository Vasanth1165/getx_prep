import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  String? title;
  MyAppBar(this.title,{super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title ?? ""),
    );
  }
}