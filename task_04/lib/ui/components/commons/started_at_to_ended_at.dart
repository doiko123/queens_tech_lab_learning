import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StartedAtToEndedAt extends StatelessWidget {
  const StartedAtToEndedAt({
    super.key,
    required this.startedAt,
    required this.endedAt,
  });
  final DateTime startedAt;
  final DateTime endedAt;

  @override
  Widget build(BuildContext context) {
    return Text(
      _formattedStartedToEndedAt(),
      style: const TextStyle(
        fontSize: 10,
      ),
    );
  }

  String _formattedStartedToEndedAt() {
    final formattedStartedAt =
        DateFormat('yyyy/MM/dd(E) HH:mm', 'ja_JP').format(startedAt);
    final formattedEndedAt = DateFormat('HH:mm', 'ja_JP').format(endedAt);
    // TODO: 本来はいったん日付比較して、開始と終了が同日の場合に上記の形で
    // 別日の場合はendedAtの日付も表示するようにしたいが、なぜかisAtSameMomentAsで日本時間での判定ができない。
    return '$formattedStartedAt 〜 $formattedEndedAt';
  }
}
