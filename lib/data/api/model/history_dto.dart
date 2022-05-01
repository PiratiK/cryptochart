// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_dto.freezed.dart';
part 'history_dto.g.dart';

@freezed
class HistoryDTO with _$HistoryDTO {
  const factory HistoryDTO({
    @JsonKey(name: 'time_close') required DateTime time,
    @JsonKey(name: 'rate_close') required double rate,
  }) = _HistoryDTO;

  factory HistoryDTO.fromJson(Map<String, Object?> json) =>
      _$HistoryDTOFromJson(json);
}
