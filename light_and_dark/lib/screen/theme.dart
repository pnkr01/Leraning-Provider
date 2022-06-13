import 'package:flutter/material.dart';
import 'package:light_and_dark/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeChanger extends StatelessWidget {
  const ThemeChanger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Changer"),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: const Text("Light Theme"),
            value: ThemeMode.light,
            groupValue: themeProvider.themeMode,
            onChanged: themeProvider.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: const Text("Dark Theme"),
            value: ThemeMode.dark,
            groupValue: themeProvider.themeMode,
            onChanged: themeProvider.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: const Text("System Theme"),
            value: ThemeMode.system,
            groupValue: themeProvider.themeMode,
            onChanged: themeProvider.setTheme,
          ),
        ],
      ),
    );
  }
}
