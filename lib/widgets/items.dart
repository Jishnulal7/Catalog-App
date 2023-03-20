import 'package:catalog_app/model/catalog.dart';
import 'package:flutter/material.dart';

class ItemLog extends StatelessWidget {
  final Item item;

  const ItemLog({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: StadiumBorder(),
        elevation: 0,
        child: ListTile(
          leading: Image.network(item.image,),
          title: Text(item.name),
          subtitle: Text(item.description),
          trailing:Text("\$${item.price}",textScaleFactor: 1.5,
          style: const TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),
          )
        ),
      ),
    );
  }
}
