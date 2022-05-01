// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_model.freezed.dart';
part 'socket_model.g.dart';

@freezed
class SocketItem with _$SocketItem {
  const factory SocketItem({
    @JsonKey(name: 'time_coinapi') required DateTime time,
    @JsonKey(name: 'bid_price') required double price,
  }) = _SocketItem;

  factory SocketItem.fromJson(Map<String, Object?> json) =>
      _$SocketItemFromJson(json);
}
