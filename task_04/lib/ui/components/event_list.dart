import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_04/ui/components/event_card.dart';
import 'package:task_04/view_models/event_store.dart';

class EventList extends StatelessWidget {
  const EventList({
    super.key,
    required this.scrollController,
    required this.recentSearchText,
  });
  final ScrollController scrollController;
  final String recentSearchText;

  @override
  Widget build(BuildContext context) {
    return Consumer<EventStore>(
      builder: (context, eventStore, child) {
        return RefreshIndicator(
          onRefresh: () async => eventStore.fetchEvents(
            keyword: recentSearchText,
            isRefresh: true,
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
