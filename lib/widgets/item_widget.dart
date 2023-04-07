import 'package:flutter/material.dart';
import 'package:basic/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //TODO: Press ctrl+space to see the list of properties
        //TODO: Press ctrl+shift+R to wrap the widget with a widget
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}