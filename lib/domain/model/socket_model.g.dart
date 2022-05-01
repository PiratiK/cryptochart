// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocketItem _$$_SocketItemFromJson(Map<String, dynamic> json) =>
    _$_SocketItem(
      time: DateTime.parse(json['time_coinapi'] as String),
      price: (json['bid_price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_SocketItemToJson(_$_SocketItem instance) =>
    <String, dynamic>{
      'time_coinapi': instance.time.toIso8601String(),
      'bid_price': instance.price,
    };
