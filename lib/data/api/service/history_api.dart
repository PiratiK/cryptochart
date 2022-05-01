import 'package:chopper/chopper.dart';

import '../../constants/app_constant.dart';

part 'history_api.chopper.dart';

@ChopperApi(baseUrl: 'v1/')
abstract class HistoryApi extends ChopperService {
  static HistoryApi create([ChopperClient? client]) => _$HistoryApi(client);

  @Get(
      path:
          'exchangerate/BTC/USD/history?period_id=1HRS&time_start={start}&time_end={end}',
      headers: {
        "X-CoinAPI-Key": AppConstant.apikey,
      })
  Future<Response> getHistory(@Path() String start, @Path() String end);
}
