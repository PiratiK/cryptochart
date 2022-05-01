abstract class SocketRepository {
  Future<bool> runSocket();
  Future<bool> stopSocket();
  Stream get stream;
}
