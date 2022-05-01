import '../model/history_model.dart';

abstract class HistoryRepository {
  Future<List<History>> getHistory(String start, String end);
}
