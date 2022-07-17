import 'package:first_flutter_project/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print(item.price.toString() + "was cilcked");
        },
        leading: Image.asset(item.imageUrl),
        title: Text(item.name),
        subtitle: Text(item.descr),
        trailing: Text(
          "\$" + item.price.toString(),
          textScaleFactor: 1.5,
          style: const TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
