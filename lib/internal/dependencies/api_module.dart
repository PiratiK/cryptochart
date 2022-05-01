import '../../data/api/api_util.dart';
import '../../data/api/service/history_service.dart';
import '../../data/api/service/socket_service.dart';

class ApiModule {
  static ApiUtil? _apiUtil;

  static ApiUtil apiUtil() {
    _apiUtil ??= ApiUtil(
      historyService: HistoryService(),
      socketService: SocketService(),
    );
    return _apiUtil!;
  }
}
