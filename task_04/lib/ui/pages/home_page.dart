import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_04/ui/components/event_list.dart';
import 'package:task_04/utility/pagination_listener.dart';
import 'package:task_04/view_models/event_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchQuery = TextEditingController();
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    final paginationListener = PaginationListener();
    Future<void> fetchData() => context.read<EventStore>().fetchEvents(
          keyword: _searchQuery.text,
        );
    // スクロール量を検知して表示するイベントを追加する
    paginationListener.perform(
      scrollController: _scrollController,
      fetchData: fetchData,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchQuery,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: const InputDecoration(
            labelText: 'キーワードでconnpassのイベントを検索',
            hintText: ' >  ここにキーワードを入れてね',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            hintStyle: TextStyle(
              color: Colors.white60,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              context.read<EventStore>().fetchEvents(
                    keyword: _searchQuery.text,
                    isRefresh: true,
                  );
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          right: 24,
          left: 24,
        ),
        child: EventList(
          scrollController: _scrollController,
          recentSearchText: _searchQuery.text,
        ),
      ),
    );
  }
}
