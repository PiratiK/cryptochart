// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$HistoryApi extends HistoryApi {
  _$HistoryApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = HistoryApi;

  @override
  Future<Response<dynamic>> getHistory(String start, String end) {
    final $url =
        'v1/exchangerate/BTC/USD/history?period_id=1HRS&time_start=${start}&time_end=${end}';
    final $headers = {
      'X-CoinAPI-Key': '8A1E9422-97B2-4B35-90F6-17DBDCA63CC1',
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
