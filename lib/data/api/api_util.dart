import '../../domain/model/history_model.dart';
import '../mapper/history_mapper.dart';
import 'service/history_service.dart';
import 'service/socket_service.dart';

class ApiUtil {
  final HistoryService historyService;
  final SocketService socketService;

  ApiUtil({
    required this.historyService,
    required this.socketService,
  });

  Future<List<History>> getHistory(String start, String end) async {
    final data = await historyService.getHistory(start, end);
    return HistoryMapper.fromDTO(data);
  }

  Future<bool> runSocket() async {
    return await socketService.runSocket();
  }

  Future<bool> stopSocket() async {
    return await socketService.stopSocket();
  }

  Stream get stream => socketService.stream;
}
