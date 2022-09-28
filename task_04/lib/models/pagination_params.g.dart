// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'pagination_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationParams _$PaginationParamsFromJson(Map<String, dynamic> json) =>
    PaginationParams(
      start: json['start'] as int?,
      order: $enumDecodeNullable(_$OrderByEnumMap, json['order']),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$PaginationParamsToJson(PaginationParams instance) =>
    <String, dynamic>{
      'start': instance.start,
      'order': _$OrderByEnumMap[instance.order],
      'count': instance.count,
    };

const _$OrderByEnumMap = {
  OrderBy.updatedAt: 'updatedAt',
  OrderBy.startedAt: 'startedAt',
  OrderBy.createdAt: 'createdAt',
};
