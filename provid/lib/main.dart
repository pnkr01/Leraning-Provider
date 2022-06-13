import 'package:flutter/material.dart';
import 'package:provid/provider/count.dart';
import 'package:provid/screen/count_ex.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => CountProvider()),
      child: const MaterialApp(
        home: CountExample(),
        title: "Pawan",
      ),
    );
  }
}
