// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventsData _$EventsDataFromJson(Map<String, dynamic> json) => EventsData(
      resultsReturned: json['results_returned'] as int,
      resultsAvailable: json['results_available'] as int,
      resultsStart: json['results_start'] as int,
      events: (json['events'] as List<dynamic>)
          .map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EventsDataToJson(EventsData instance) =>
    <String, dynamic>{
      'results_returned': instance.resultsReturned,
      'results_available': instance.resultsAvailable,
      'results_start': instance.resultsStart,
      'events': instance.events,
    };
