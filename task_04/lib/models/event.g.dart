// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      eventId: json['event_id'] as int,
      title: json['title'] as String,
      catchCopy: json['catch'] as String,
      description: json['description'] as String,
      eventUrl: json['event_url'] as String,
      hashTag: json['hash_tag'] as String,
      startedAt: _parseTimestamp(json['started_at'] as String),
      endedAt: _parseTimestamp(json['ended_at'] as String),
      eventType: json['event_type'] as String,
      series: Series.fromJson(json['series'] as Map<String, dynamic>),
      ownerId: json['owner_id'] as int,
      ownerNickname: json['owner_nickname'] as String,
      ownerDisplayName: json['owner_display_name'] as String,
      accepted: json['accepted'] as int,
      waiting: json['waiting'] as int,
      updatedAt: _parseTimestamp(json['updated_at'] as String),
      limit: json['limit'] as int?,
      address: json['address'] as String?,
      place: json['place'] as String?,
      lat: _parseNullableNumString(json['lat'] as String?),
      lon: _parseNullableNumString(json['lon'] as String?),
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'event_id': instance.eventId,
      'title': instance.title,
      'catch': instance.catchCopy,
      'description': instance.description,
      'event_url': instance.eventUrl,
      'hash_tag': instance.hashTag,
      'started_at': instance.startedAt.toIso8601String(),
      'ended_at': instance.endedAt.toIso8601String(),
      'event_type': instance.eventType,
      'series': instance.series,
      'owner_id': instance.ownerId,
      'owner_nickname': instance.ownerNickname,
      'owner_display_name': instance.ownerDisplayName,
      'accepted': instance.accepted,
      'waiting': instance.waiting,
      'updated_at': instance.updatedAt.toIso8601String(),
      'limit': instance.limit,
      'address': instance.address,
      'place': instance.place,
      'lat': instance.lat,
      'lon': instance.lon,
    };
