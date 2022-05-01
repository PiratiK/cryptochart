import '../../domain/model/history_model.dart';
import '../../domain/repository/history_repository.dart';
import '../api/api_util.dart';

class HistoryDataRepository extends HistoryRepository {
  final ApiUtil _apiUtil;

  HistoryDataRepository(this._apiUtil);

  @override
  Future<List<History>> getHistory(String start, String end) async {
    return await _apiUtil.getHistory(start, end);
  }
}
