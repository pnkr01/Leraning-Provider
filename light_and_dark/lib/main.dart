import 'package:flutter/material.dart';
import 'package:light_and_dark/provider/theme_provider.dart';
import 'package:light_and_dark/screen/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => ThemeProvider()),
      child: Builder(
        builder: ((context) {
          return MaterialApp(
            themeMode: Provider.of<ThemeProvider>(context).themeMode,
            title: 'Flutter Demo',
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.blue,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
            ),
            home: const ThemeChanger(),
          );
        }),
      ),
    );
  }
}
