import 'package:flutter/material.dart';
import 'package:test_flutter/test/ratings.dart';
import 'package:test_flutter/test/row.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Test APP",
      home: Section()
    );
  }

}
