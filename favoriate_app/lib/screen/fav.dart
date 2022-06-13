import 'package:favoriate_app/screen/fav_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/fav_provider.dart';

class FavoriateScreen extends StatelessWidget {
  const FavoriateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fav Bar"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FavScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.favorite,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 14,
              itemBuilder: ((context, index) {
                return Consumer<FavProvider>(
                  builder: (context, value, child) {
                    return ListTile(
                      onTap: () {
                        value.indexes.contains(index)
                            ? value.removeItems(index)
                            : value.addItems(index);
                      },
                      title: Text(value.ls[index]),
                      trailing: Icon(
                        value.indexes.contains(index)
                            ? Icons.favorite
                            : Icons.favorite_border,
                      ),
                    );
                  },
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
