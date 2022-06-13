import 'package:favoriate_app/provider/fav_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favoriate Screen"),
      ),
      body: Column(
        children: [
          Expanded(child: Consumer<FavProvider>(
            builder: (context, value, child) {
              return ListView.builder(
                  itemCount: value.indexes.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text(value.ls[index]),
                      trailing: const Icon(Icons.favorite),
                    );
                  });
            },
          )),
        ],
      ),
    );
  }
}
