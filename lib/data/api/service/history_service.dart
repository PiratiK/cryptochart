import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:logger/logger.dart';

import '../../mapper/history_mapper.dart';
import '../model/history_dto.dart';
import 'history_api.dart';

class HistoryService {
  final chopper = ChopperClient(
    baseUrl: 'https://rest.coinapi.io/',
    services: [
      HistoryApi.create(),
    ],
  );

  final body =
      '[ { "time_period_start": "2022-04-29T00:00:00.0000000Z", "time_period_end": "2022-04-29T01:00:00.0000000Z", "time_open": "2022-04-29T00:00:00.0000000Z", "time_close": "2022-04-29T00:59:00.0000000Z", "rate_open": 39757.39007355191, "rate_high": 39845.970988774614, "rate_low": 39688.55718964594, "rate_close": 39832.04868527267 }, { "time_period_start": "2022-04-29T01:00:00.0000000Z", "time_period_end": "2022-04-29T02:00:00.0000000Z", "time_open": "2022-04-29T01:00:00.0000000Z", "time_close": "2022-04-29T01:59:00.0000000Z", "rate_open": 39836.994011718474, "rate_high": 39905.614404105465, "rate_low": 39776.72418268245, "rate_close": 39807.7527738249 }, { "time_period_start": "2022-04-29T02:00:00.0000000Z", "time_period_end": "2022-04-29T03:00:00.0000000Z", "time_open": "2022-04-29T02:00:00.0000000Z", "time_close": "2022-04-29T02:59:00.0000000Z", "rate_open": 39814.098956820824, "rate_high": 39814.098956820824, "rate_low": 39502.98272275613, "rate_close": 39507.60137917135 }, { "time_period_start": "2022-04-29T03:00:00.0000000Z", "time_period_end": "2022-04-29T04:00:00.0000000Z", "time_open": "2022-04-29T03:00:00.0000000Z", "time_close": "2022-04-29T03:59:00.0000000Z", "rate_open": 39516.69964977695, "rate_high": 39540.999323893026, "rate_low": 39343.46228100762, "rate_close": 39500.327271044065 }, { "time_period_start": "2022-04-29T04:00:00.0000000Z", "time_period_end": "2022-04-29T05:00:00.0000000Z", "time_open": "2022-04-29T04:00:00.0000000Z", "time_close": "2022-04-29T04:59:00.0000000Z", "rate_open": 39499.36322113347, "rate_high": 39583.8744661405, "rate_low": 39384.55399800181, "rate_close": 39560.796815078975 }, { "time_period_start": "2022-04-29T05:00:00.0000000Z", "time_period_end": "2022-04-29T06:00:00.0000000Z", "time_open": "2022-04-29T05:00:00.0000000Z", "time_close": "2022-04-29T05:59:00.0000000Z", "rate_open": 39560.43069577079, "rate_high": 39609.71202960657, "rate_low": 39487.70124695625, "rate_close": 39488.87827532129 }, { "time_period_start": "2022-04-29T06:00:00.0000000Z", "time_period_end": "2022-04-29T07:00:00.0000000Z", "time_open": "2022-04-29T06:00:00.0000000Z", "time_close": "2022-04-29T06:59:00.0000000Z", "rate_open": 39491.26451677507, "rate_high": 39553.1253183534, "rate_low": 39404.658198858626, "rate_close": 39477.6707712876 }, { "time_period_start": "2022-04-29T07:00:00.0000000Z", "time_period_end": "2022-04-29T08:00:00.0000000Z", "time_open": "2022-04-29T07:00:00.0000000Z", "time_close": "2022-04-29T07:59:00.0000000Z", "rate_open": 39474.91308109152, "rate_high": 39602.610450789, "rate_low": 39428.920193982085, "rate_close": 39594.91042611686 }, { "time_period_start": "2022-04-29T08:00:00.0000000Z", "time_period_end": "2022-04-29T09:00:00.0000000Z", "time_open": "2022-04-29T08:00:00.0000000Z", "time_close": "2022-04-29T08:59:00.0000000Z", "rate_open": 39612.79772212134, "rate_high": 39614.095010663434, "rate_low": 39393.961229314395, "rate_close": 39393.961229314395 }, { "time_period_start": "2022-04-29T09:00:00.0000000Z", "time_period_end": "2022-04-29T10:00:00.0000000Z", "time_open": "2022-04-29T09:00:00.0000000Z", "time_close": "2022-04-29T09:59:00.0000000Z", "rate_open": 39398.61634399347, "rate_high": 39398.61634399347, "rate_low": 39105.01095513308, "rate_close": 39108.44666526693 }, { "time_period_start": "2022-04-29T10:00:00.0000000Z", "time_period_end": "2022-04-29T11:00:00.0000000Z", "time_open": "2022-04-29T10:00:00.0000000Z", "time_close": "2022-04-29T10:59:00.0000000Z", "rate_open": 39114.85385948296, "rate_high": 39227.05033021816, "rate_low": 38753.468071363015, "rate_close": 38811.64378486532 }, { "time_period_start": "2022-04-29T11:00:00.0000000Z", "time_period_end": "2022-04-29T12:00:00.0000000Z", "time_open": "2022-04-29T11:00:00.0000000Z", "time_close": "2022-04-29T11:59:00.0000000Z", "rate_open": 38806.31972207767, "rate_high": 38932.940282097596, "rate_low": 38664.95445265645, "rate_close": 38764.1673619214 }, { "time_period_start": "2022-04-29T12:00:00.0000000Z", "time_period_end": "2022-04-29T13:00:00.0000000Z", "time_open": "2022-04-29T12:00:00.0000000Z", "time_close": "2022-04-29T12:59:00.0000000Z", "rate_open": 38762.34482253993, "rate_high": 39116.108374579635, "rate_low": 38661.41312512324, "rate_close": 38909.508460190875 }, { "time_period_start": "2022-04-29T13:00:00.0000000Z", "time_period_end": "2022-04-29T14:00:00.0000000Z", "time_open": "2022-04-29T13:00:00.0000000Z", "time_close": "2022-04-29T13:59:00.0000000Z", "rate_open": 38918.86077854309, "rate_high": 39260.84015860666, "rate_low": 38824.57084276329, "rate_close": 39259.25795845503 }, { "time_period_start": "2022-04-29T14:00:00.0000000Z", "time_period_end": "2022-04-29T15:00:00.0000000Z", "time_open": "2022-04-29T14:00:00.0000000Z", "time_close": "2022-04-29T14:59:00.0000000Z", "rate_open": 39264.49079637272, "rate_high": 39277.417214756846, "rate_low": 38820.321875684225, "rate_close": 38944.183314475005 }, { "time_period_start": "2022-04-29T15:00:00.0000000Z", "time_period_end": "2022-04-29T16:00:00.0000000Z", "time_open": "2022-04-29T15:00:00.0000000Z", "time_close": "2022-04-29T15:59:00.0000000Z", "rate_open": 38943.46351553232, "rate_high": 39134.29447202701, "rate_low": 38870.21208709325, "rate_close": 38982.66283754655 }, { "time_period_start": "2022-04-29T16:00:00.0000000Z", "time_period_end": "2022-04-29T17:00:00.0000000Z", "time_open": "2022-04-29T16:00:00.0000000Z", "time_close": "2022-04-29T16:59:00.0000000Z", "rate_open": 39003.35647021515, "rate_high": 39029.48451360353, "rate_low": 38464.05476132003, "rate_close": 38472.54907945867 }, { "time_period_start": "2022-04-29T17:00:00.0000000Z", "time_period_end": "2022-04-29T18:00:00.0000000Z", "time_open": "2022-04-29T17:00:00.0000000Z", "time_close": "2022-04-29T17:59:00.0000000Z", "rate_open": 38499.13553104346, "rate_high": 38668.051833736914, "rate_low": 38499.13553104346, "rate_close": 38634.21004699369 }, { "time_period_start": "2022-04-29T18:00:00.0000000Z", "time_period_end": "2022-04-29T19:00:00.0000000Z", "time_open": "2022-04-29T18:00:00.0000000Z", "time_close": "2022-04-29T18:59:00.0000000Z", "rate_open": 38639.91818004936, "rate_high": 38652.42373392781, "rate_low": 38374.27703842779, "rate_close": 38498.20001308389 }, { "time_period_start": "2022-04-29T19:00:00.0000000Z", "time_period_end": "2022-04-29T20:00:00.0000000Z", "time_open": "2022-04-29T19:00:00.0000000Z", "time_close": "2022-04-29T19:59:00.0000000Z", "rate_open": 38531.51134701884, "rate_high": 38583.21680831112, "rate_low": 38205.08233999647, "rate_close": 38323.21888870389 }, { "time_period_start": "2022-04-29T20:00:00.0000000Z", "time_period_end": "2022-04-29T21:00:00.0000000Z", "time_open": "2022-04-29T20:00:00.0000000Z", "time_close": "2022-04-29T20:59:00.0000000Z", "rate_open": 38312.80957128604, "rate_high": 38572.74276279713, "rate_low": 38312.80957128604, "rate_close": 38559.64828373576 }, { "time_period_start": "2022-04-29T21:00:00.0000000Z", "time_period_end": "2022-04-29T22:00:00.0000000Z", "time_open": "2022-04-29T21:00:00.0000000Z", "time_close": "2022-04-29T21:59:00.0000000Z", "rate_open": 38559.46523003051, "rate_high": 38641.60831022241, "rate_low": 38488.86244907709, "rate_close": 38567.77427777365 }, { "time_period_start": "2022-04-29T22:00:00.0000000Z", "time_period_end": "2022-04-29T23:00:00.0000000Z", "time_open": "2022-04-29T22:00:00.0000000Z", "time_close": "2022-04-29T22:59:00.0000000Z", "rate_open": 38564.62870038111, "rate_high": 38629.92746217207, "rate_low": 38457.51049675893, "rate_close": 38598.26691561898 }, { "time_period_start": "2022-04-29T23:00:00.0000000Z", "time_period_end": "2022-04-30T00:00:00.0000000Z", "time_open": "2022-04-29T23:00:00.0000000Z", "time_close": "2022-04-29T23:59:00.0000000Z", "rate_open": 38613.462342826904, "rate_high": 38658.30300833135, "rate_low": 38567.2874336199, "rate_close": 38582.54432510055 }, { "time_period_start": "2022-04-30T00:00:00.0000000Z", "time_period_end": "2022-04-30T01:00:00.0000000Z", "time_open": "2022-04-30T00:00:00.0000000Z", "time_close": "2022-04-30T00:00:00.0000000Z", "rate_open": 38579.71516323897, "rate_high": 38579.71516323897, "rate_low": 38579.71516323897, "rate_close": 38579.71516323897 } ]';

  Future<List<HistoryDTO>> getHistory(String start, String end) async {
    final historyService = chopper.getService<HistoryApi>();
    try {
      final response = await historyService.getHistory(start, end);
      if (response.statusCode != 200) {
        throw HttpException('${response.statusCode}');
      }
      return HistoryMapper.fromApi(response.body);
    } catch (e) {
      Logger().e(e);
      return HistoryMapper.fromApi(body);
    }
  }
}