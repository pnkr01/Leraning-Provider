import 'package:favoriate_app/provider/fav_provider.dart';
import 'package:favoriate_app/screen/fav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => FavProvider()),
      child: const MaterialApp(
        home: FavoriateScreen(),
      ),
    );
  }
}
