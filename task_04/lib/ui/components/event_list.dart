import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_04/ui/components/event_card.dart';
import 'package:task_04/view_models/event_store.dart';

class EventList extends StatelessWidget {
  const EventList({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    // FutureBuilderじゃだめかも。キーワード入力でリクエスト飛ばして表示させたいので
    return FutureBuilder<dynamic>(
      future: context.read<EventStore>().fetchEvents(
            keyword: 'flutter',
          ),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
          case ConnectionState.active:
            {
              // 通信中はスピナーを表示
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          case ConnectionState.done:
            {
              // エラー発生時はエラーメッセージを表示
              if (snapshot.hasError) {
                return Center(
                    child: Text(
                  snapshot.error.toString(),
                ));
              } else {
                return Consumer<EventStore>(
                  builder: (context, eventStore, child) {
                    return RefreshIndicator(
                      onRefresh: () async => eventStore.fetchEvents(
                        keyword: 'flutter',
                      ),
                      child: ListView.builder(
                        controller: scrollController,
                        shrinkWrap: true,
                        itemCount: eventStore.events.length,
                        itemBuilder: (context, index) {
                          return EventCard(event: eventStore.events[index]);
                        },
                      ),
                    );
                  },
                );
              }
            }
        }
      },
    );
  }
}
