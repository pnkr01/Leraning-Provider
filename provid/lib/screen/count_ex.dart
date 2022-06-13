import 'package:flutter/material.dart';
import 'package:provid/provider/count.dart';
import 'package:provider/provider.dart';

class CountExample extends StatelessWidget {
  const CountExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(
      context,
      listen: false,
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Subscribe"),
      ),
      body: Center(child: Consumer<CountProvider>(
        builder: (BuildContext context, value, Widget? child) {
          return Text(
            value.count.toString(),
            style: const TextStyle(fontSize: 25.0),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => countProvider.incrementCount(),
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
