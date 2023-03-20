import 'package:catalog_app/model/catalog.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'package:catalog_app/widgets/items.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  String days = 'Jishnu';
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(4, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemLog(
            item: dummyList[index],
          );
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
