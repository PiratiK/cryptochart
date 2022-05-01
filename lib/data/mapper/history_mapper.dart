import 'dart:convert';

import '../../domain/model/history_model.dart';
import '../api/model/history_dto.dart';

class HistoryMapper {
  static Future<List<HistoryDTO>> fromApi(String data) async {
    final List<HistoryDTO> histories = [];
    List<dynamic> list = json.decode(data);
    for (var e in list) {
      histories.add(HistoryDTO.fromJson(e));
    }
    return histories;
  }

  static Future<List<History>> fromDTO(List<HistoryDTO> list) async {
    List<History> histories = [];

    for (var e in list) {
      histories.add(History(time: e.time, rate: e.rate));
    }

    return histories;
  }
}
