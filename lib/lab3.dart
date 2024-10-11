import 'package:flutter/material.dart';

void main() {
  runApp(const Aimyy());
}

class Aimyy extends StatelessWidget {
  const Aimyy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('Lets Scroll It Down')),
          backgroundColor: const Color.fromARGB(255, 160, 106, 124),
        ),
        body: const ItemList(),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    // List of items
    final items = List<String>.generate(10, (i) => 'Item ${i + 1}');

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          color: const Color.fromARGB(255, 118, 207, 195),
          margin: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(items[index]),
            tileColor: const Color.fromARGB(255, 235, 152, 221),
            textColor: const Color.fromARGB(255, 240, 229, 131),
          ),
        );
      },
    );
  }
}
