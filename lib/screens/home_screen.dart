import 'package:flutter/material.dart';
import 'package:foodpanda_clone/utils/default_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.list,
          ),
          onPressed: () {},
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("St 2002"),
            Text(
              "Phnom Penh",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.card_travel),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Search Bar"),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
            ),
          ),
        ],
      ),
    );
  }
}
