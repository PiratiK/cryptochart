import '../../domain/repository/socket_repository.dart';
import '../api/api_util.dart';

class SocketDataRepository extends SocketRepository {
  final ApiUtil _apiUtil;

  SocketDataRepository(this._apiUtil);

  @override
  Future<bool> runSocket() async {
    return await _apiUtil.runSocket();
  }

  @override
  Future<bool> stopSocket() async {
    return await _apiUtil.stopSocket();
  }

  @override
  Stream get stream => _apiUtil.stream;
}
