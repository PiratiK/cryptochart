// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HistoryDTO _$$_HistoryDTOFromJson(Map<String, dynamic> json) =>
    _$_HistoryDTO(
      time: DateTime.parse(json['time_close'] as String),
      rate: (json['rate_close'] as num).toDouble(),
    );

Map<String, dynamic> _$$_HistoryDTOToJson(_$_HistoryDTO instance) =>
    <String, dynamic>{
      'time_close': instance.time.toIso8601String(),
      'rate_close': instance.rate,
    };
