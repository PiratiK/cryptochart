import '../../data/repository/history_data_repository.dart';
import '../../data/repository/socket_data_repository.dart';
import '../../domain/repository/history_repository.dart';
import '../../domain/repository/socket_repository.dart';
import 'api_module.dart';

class RepositoryModule {
  static HistoryRepository? _historyRepository;
  static SocketRepository? _socketRepository;

  static HistoryRepository historyRepository() {
    _historyRepository ??= HistoryDataRepository(ApiModule.apiUtil());
    return _historyRepository!;
  }

  static SocketRepository socketRepository() {
    _socketRepository ??= SocketDataRepository(ApiModule.apiUtil());
    return _socketRepository!;
  }
}
