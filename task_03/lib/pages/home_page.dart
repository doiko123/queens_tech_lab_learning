import 'package:flutter/material.dart';
import 'package:task_03/components/list_item.dart';
import 'package:task_03/data/shop_list_data.dart';
import 'package:task_03/models/types/shop.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: _shopListMenu(
          shopList: shopListData,
        ),
      ),
    );
  }
}

List<ListItem> _shopListMenu({
  required List<Shop> shopList,
}) {
  return shopList
      .map((shop) => ListItem(
            textString: shop.name,
            icon: shop.icon,
          ))
      .toList();
}
