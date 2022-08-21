import 'package:flutter/material.dart';
import 'package:task_03/components/list_item.dart';
import 'package:task_03/data/menu_list_data.dart';
import 'package:task_03/models/types/menu_list_item.dart';

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
        children: _menuList(
          menuList: menuListData,
        ),
      ),
    );
  }
}

List<ListItem> _menuList({
  required List<MenuListItem> menuList,
}) {
  return menuList
      .map((item) => ListItem(
            textString: item.textString,
            icon: item.icon,
          ))
      .toList();
}
