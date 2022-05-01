import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../constants/app_constant.dart';

class SocketService {
  final String socketUrl = "wss://ws-sandbox.coinapi.io/v1/";

  WebSocketChannel? _channel;

  WebSocketChannel get channel {
    _channel ??= WebSocketChannel.connect(Uri.parse(socketUrl));
    return _channel!;
  }

  Future<bool> runSocket() async {
    final data = json.encode({
      "type": "hello",
      "apikey": AppConstant.apikey,
      "heartbeat": false,
      "subscribe_data_type": ["quote"],
      "subscribe_filter_asset_id": ["BTC/USD"],
      "subscribe_filter_symbol_id": ["COINBASE_SPOT_"],
      "subscribe_update_limit_ms_quote": 2000
    });
    try {
      channel.sink.add(data);
    } catch (e) {
      Logger().e(e);
      return false;
    }
    return true;
  }

  Future<bool> stopSocket() async {
    try {
      channel.sink.close();
    } catch (e) {
      Logger().e(e);
      return false;
    }
    _channel = null;
    return true;
  }

  Stream get stream => channel.stream;
}
