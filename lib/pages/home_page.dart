import 'dart:convert';

import 'package:basic/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final days = 10;

  final name = "World";

  @override
  void initState() {
    // TODO: Same as mount in vue
    super.initState();
    loadData();
  }

  // TODO: how to read local json file
  loadData() async {
    final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    print("Data loaded");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
        },
      ),
      drawer: MyDrawer()
    );
  }
}
