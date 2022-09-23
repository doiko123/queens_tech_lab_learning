import 'package:flutter/material.dart';
import 'package:task_04/models/event.dart';
import 'package:task_04/ui/components/commons/started_at_to_ended_at.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key, required this.event});
  final Event event;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              event.title,
              style: const TextStyle(
                fontSize: 11,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(
                  Icons.timer,
                  size: 10,
                ),
                const SizedBox(
                  width: 2,
                ),
                StartedAtToEndedAt(
                  startedAt: event.startedAt,
                  endedAt: event.endedAt,
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(
                  Icons.place,
                  size: 10,
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  event.place ?? '未定',
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              event.eventUrl,
              style: const TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
